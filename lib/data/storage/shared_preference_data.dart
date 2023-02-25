import 'package:shared_preferences/shared_preferences.dart';
import 'package:yuno/data/repository/refresh_token_provider.dart';
import 'package:yuno/data/repository/reset_email_provider.dart';
import 'package:yuno/data/repository/reset_token_provider.dart';
import 'package:yuno/data/repository/tasks_provider.dart';
import 'package:yuno/data/repository/token_provider.dart';
import 'package:yuno/data/repository/user_provider.dart';

class SharedPreferenceData
    implements
        UserProvider,
        TokenProvider,
        RefreshTokenProvider,
        TasksProvider,
        ResetEmailProvider,
        ResetTokenProvider {
  static const _tokenKey = 'token_key';
  static const _refreshTokenKey = 'refresh_token_key';
  static const _userKey = 'user_key';
  static const _tasksKey = 'tasks_key';
  static const _resetEmail = 'reset_email';
  static const _resetToken = 'reset_token';

  @override
  Future<bool> setToken(final String? token) => _setItem(key: _tokenKey, item: token);

  @override
  Future<String?> getToken() => _getItem(_tokenKey);

  @override
  Future<bool> setRefreshToken(final String? refreshToken) => _setItem(
        key: _refreshTokenKey,
        item: refreshToken,
      );

  @override
  Future<String?> getRefreshToken() => _getItem(_refreshTokenKey);

  @override
  Future<bool> setUser(final String? user) => _setItem(key: _userKey, item: user);

  @override
  Future<String?> getUser() => _getItem(_userKey);

  @override
  Future<String?> getTasks() => _getItem(_tasksKey);

  @override
  Future<bool> setTasks(final String? tasks) => _setItem(key: _tasksKey, item: tasks);

  @override
  Future<String?> getResetEmail() => _getItem(_resetEmail);

  @override
  Future<bool> setResetEmail(String? resetEmail) => _setItem(key: _resetEmail, item: resetEmail);

  @override
  Future<String?> getResetToken() => _getItem(_resetToken);

  @override
  Future<bool> setResetToken(String? resetToken) => _setItem(key: _resetToken, item: resetToken);

/////////////////////////////////////////////////////////////////////////////////////////////////

  Future<bool> _setItem({
    required final String key,
    required final String? item,
  }) async {
    final sp = await SharedPreferences.getInstance();
    final result = sp.setString(key, item ?? '');
    return result;
  }

  Future<String?> _getItem(
    final String key,
  ) async {
    final sp = await SharedPreferences.getInstance();
    return sp.getString(key);
  }
}
