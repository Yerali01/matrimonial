import 'package:anm_app/all_over_again/forgot_password/forgot_password_view.dart';
import 'package:anm_app/all_over_again/form/form_screen_view.dart';
import 'package:anm_app/all_over_again/login/login_page_view.dart';
import 'package:anm_app/all_over_again/main/main_screen_veiw.dart';
import 'package:anm_app/all_over_again/profile/account_page_view.dart';
import 'package:anm_app/all_over_again/register/register_page_view.dart';
import 'package:anm_app/all_over_again/splash/spashScreen_view.dart';
import 'package:anm_app/all_over_again/tabs/tabs_page_binding.dart';
import 'package:anm_app/all_over_again/tabs/tabs_page_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Path.splash,
      page: () => SplashScreenView(),
      // binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Path.login,
      page: () => LoginPageView(),
      // binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Path.tabsPage,
      page: () => TabsPageView(),
      binding: TabsPageBinding(),
    ),
    GetPage(
      name: _Path.register,
      page: () => RegisterPageView(),
      // binding: RegisterPageBinding(),
    ),
    GetPage(
      name: _Path.form,
      page: () => FormScreenView(),
      // binding: FormScreenBinding(),
    ),
    GetPage(
      name: _Path.mainScreen,
      page: () => MainScreenView(),
      // binding: MainScreenBinding(),
    ),
    GetPage(
      name: _Path.profile,
      page: () => AccountPageView(),
      // binding: MainScreenBinding(),
    ),
    GetPage(
      name: _Path.forgotPassword,
      page: () => ForgotPasswordView(),
      // binding: MainScreenBinding(),
    ),
  ];
}


/*
splash screen   OK
registering     OK
login           OK
main screen
profile screen
form screen     OK
tabs page       OK
 */