import 'package:flutter/material.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = sl.get<UserRepository>().getItem();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.toString()),
            TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context,
                RoutesPage.login,
                (route) => false,
              ),
              child: const Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
