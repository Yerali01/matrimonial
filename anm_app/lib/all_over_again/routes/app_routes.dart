part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const splash = _Path.splash;
  static const login = _Path.login;
  static const register = _Path.register;
  static const profile = _Path.profile;
  static const tabsPage = _Path.tabsPage;
  static const form = _Path.form;
  static const mainScreen = _Path.mainScreen;
  static const forgotPassword = _Path.forgotPassword;
}

abstract class _Path {
  _Path._();

  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';
  static const profile = '/profile';
  static const tabsPage = '/tabsPage';
  static const form = '/form';
  static const mainScreen = '/mainScreen';
  static const forgotPassword = '/forgotPassword';
}
