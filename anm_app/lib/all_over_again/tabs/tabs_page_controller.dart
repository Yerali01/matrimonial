import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:anm_app/all_over_again/routes/app_pages.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TabsPageController extends GetxController {
  AuthRepository authRepository;
  TabsPageController(this.authRepository);

  final GetStorage _getStorage = GetStorage();

  var tabsIndex = 0;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    super.onClose();
  }

  void changeTabIndex(int index) {
    tabsIndex = index;
    update();
  }

  logout() async {
    try {
      await authRepository.logout(_getStorage.read("sessionId")).then((value) {
        _getStorage.erase();
        // Get.find<LoginPageController>().clearTextEditingControllers();
        Get.offAllNamed(Routes.login);
      }).catchError((error) {
        if (error is AppwriteException) {
          print('${error.response["message"]}');
        } else {
          print("$error");
        }
      });
    } catch (e) {
      SnackBar(
        content: Text("$e"),
      );
    }
  }
}
