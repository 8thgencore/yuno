abstract class RouteName {
  const RouteName._();

  static const splash = 'splash';
  static const register = 'register';
  static const login = 'login';
  static const home = 'home';
  static const calendar = 'calendar';
  static const statistics = 'stat';
  static const profile = 'profile';
  static const profileEdit = 'edit';
  static const profileChangePassword = 'change-password';
  static const projects = 'projects';
  static const projectCreate = 'project-create';
}

abstract class RoutePath {
  const RoutePath._();

  static const splash = '/splash';
  static const register = '/register';
  static const login = '/login';
  static const home = '/home';
  static const calendar = '/calendar';
  static const statistics = '/stat';
  static const profile = '/profile';
  static const profileEdit = 'edit';
  static const profileChangePassword = 'change-password';
  static const projects = '/projects';
  static const projectCreate = 'create';
}
