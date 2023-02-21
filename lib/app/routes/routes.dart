abstract class RouteName {
  const RouteName._();

  static const splash = 'splash';
  static const register = 'register';
  static const login = 'login';
  static const home = 'home';
  static const forgotPassword = 'forgot-password';
  static const calendar = 'calendar';
  static const statistics = 'stat';
  static const profile = 'profile';
  static const profileEdit = 'edit';
  static const profileChangePassword = 'change-password';
  static const profileProjects = 'my-projects';
  static const projects = 'projects';
  static const project = 'project';
  static const projectEdit = 'project-edit';
  static const projectCreate = 'project-create';
  static const taskEdit = 'task-edit';
  static const taskCreate = 'task-create';
}

abstract class RoutePath {
  const RoutePath._();

  static const splash = '/splash';
  static const register = '/register';
  static const login = '/login';
  static const home = '/home';
  static const forgotPassword = '/forgot-password';
  static const calendar = '/calendar';
  static const statistics = '/stat';
  static const profile = '/profile';
  static const profileEdit = 'edit';
  static const profileChangePassword = 'change-password';
  static const profileProjects = 'my-projects';
  static const projects = '/projects';
  static const project = ':id([0-9a-z-]{36})';
  static const projectEdit = 'edit';
  static const projectCreate = 'create';
  static const taskEdit = '/task/:id([0-9a-z-]{36})/edit';
  static const taskCreate = '/task/create';
}
