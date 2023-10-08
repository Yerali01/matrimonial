import 'package:anm_app/all_over_again/provider/appwrite_provider.dart';
import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:get/get.dart';

import 'main_screen_controller.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(
      () => MainScreenController(
        AuthRepository(
          AppWriteProvider(),
        ),
      ),
    );

    // Get.lazyPut<HomeController>(() => HomeController());
  }
}
