abstract class RouteName {
  const RouteName._();

  static const splash = 'splash';
  static const register = 'register';
  static const login = 'login';
  static const home = 'home';
  static const profile = 'profile';
  static const profileEdit = 'edit';
  static const profileChangePassword = 'change-password';
}

abstract class RoutePath {
  const RoutePath._();

  static const splash = '/splash';
  static const register = '/register';
  static const login = '/login';
  static const home = '/home';
  static const profile = '/profile';
  static const profileEdit = 'edit';
  static const profileChangePassword = 'change-password';
}
