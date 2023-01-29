import 'package:yuno/data/repository/refresh_token_data_repository.dart';
import 'package:yuno/data/repository/tasks_data_repository.dart';
import 'package:yuno/data/repository/token_data_repository.dart';
import 'package:yuno/data/repository/user_data_repository.dart';

class LogoutInteractor {
  LogoutInteractor({
    required this.userDataRepository,
    required this.tokenDataRepository,
    required this.refreshTokenDataRepository,
    required this.tasksDataRepository,
  });

  final UserDataRepository userDataRepository;
  final TokenDataRepository tokenDataRepository;
  final RefreshTokenDataRepository refreshTokenDataRepository;
  final TasksNotDoneDataRepository tasksDataRepository;

  Future<void> logout() async {
    await userDataRepository.setItem(null);
    await tokenDataRepository.setItem(null);
    await refreshTokenDataRepository.setItem(null);
    await tasksDataRepository.setItem(null);
  }
}
