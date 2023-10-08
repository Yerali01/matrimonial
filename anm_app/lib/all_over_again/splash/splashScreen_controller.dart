import 'package:anm_app/all_over_again/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreenController extends GetxController {
  final GetStorage _getStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    // Future.delayed(
    //     const Duration(seconds: 3), () => Get.offAllNamed(Routes.login));

    if (_getStorage.read("userId") != null) {
      Get.offAllNamed(Routes.tabsPage);
    } else {
      Get.offAllNamed(Routes.login);
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
