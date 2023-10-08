import 'package:anm_app/all_over_again/forgot_password/forgot_password_controller.dart';
import 'package:anm_app/all_over_again/provider/appwrite_provider.dart';
import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(AuthRepository(
        AppWriteProvider(),
      )),
    );
  }
}
