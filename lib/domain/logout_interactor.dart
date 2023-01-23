import 'package:yuno/data/repository/refresh_token_repository.dart';
import 'package:yuno/data/repository/tasks_repository.dart';
import 'package:yuno/data/repository/token_repository.dart';
import 'package:yuno/data/repository/user_repository.dart';

class LogoutInteractor {
  LogoutInteractor({
    required this.userRepository,
    required this.tokenRepository,
    required this.refreshTokenRepository,
    required this.tasksRepository,
  });

  final UserRepository userRepository;
  final TokenRepository tokenRepository;
  final RefreshTokenRepository refreshTokenRepository;
  final TasksRepository tasksRepository;

  Future<void> logout() async {
    await userRepository.setItem(null);
    await tokenRepository.setItem(null);
    await refreshTokenRepository.setItem(null);
    await tasksRepository.setItem(null);
  }
}
