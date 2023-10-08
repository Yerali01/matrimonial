import 'package:anm_app/all_over_again/forgot_password/forgot_password_controller.dart';
import 'package:anm_app/all_over_again/form/form_screen_controller.dart';
import 'package:anm_app/all_over_again/login/login_page_controller.dart';
import 'package:anm_app/all_over_again/main/main_screen_controller.dart';
import 'package:anm_app/all_over_again/profile/account_page_controller.dart';
import 'package:anm_app/all_over_again/provider/appwrite_provider.dart';
import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:anm_app/all_over_again/register/register_page_controller.dart';
import 'package:anm_app/all_over_again/splash/splashScreen_controller.dart';
import 'package:get/get.dart';
import 'package:anm_app/all_over_again/tabs/tabs_page_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormScreenController>(
      () => FormScreenController(
        AuthRepository(
          AppWriteProvider(),
        ),
      ),
    );
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(
        AuthRepository(
          AppWriteProvider(),
        ),
      ),
    );
    Get.lazyPut<MainScreenController>(
      () => MainScreenController(
        AuthRepository(
          AppWriteProvider(),
        ),
      ),
    );
    Get.lazyPut<RegisterPageController>(
      () => RegisterPageController(
        AuthRepository(
          AppWriteProvider(),
        ),
      ),
    );
    Get.lazyPut<SplashScreenController>(
      () => SplashScreenController(),
    );
    Get.put<AccountPageController>(
      AccountPageController(
        AuthRepository(
          AppWriteProvider(),
        ),
      ),
    );
    Get.lazyPut<TabsPageController>(
      () => TabsPageController(
        AuthRepository(
          AppWriteProvider(),
        ),
      ),
    );
    Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(
        AuthRepository(
          AppWriteProvider(),
        ),
      ),
    );
  }
}
