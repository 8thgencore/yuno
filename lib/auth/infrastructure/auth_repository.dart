import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:yuno/auth/domain/auth_failure.dart';

class AuthRepository {
  AuthRepository(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: emailAddress,
            password: password,
          )
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.serverEmailAlreadyInUse());
      } else if (e.code == 'invalid-email') {
        return left(const AuthFailure.serverInvalidEmail());
      } else {
        return left(const AuthFailure.serverUnknownError());
      }
    }
  }
}
