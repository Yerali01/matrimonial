import 'package:anm_app/all_over_again/login/login_page_controller.dart';
import 'package:anm_app/all_over_again/provider/appwrite_provider.dart';
import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:anm_app/all_over_again/tabs/tabs_page_controller.dart';
import 'package:get/get.dart';

class TabsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsPageController>(
      () => TabsPageController(
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

    // Get.lazyPut<HomeController>(() => HomeController());
  }
}
