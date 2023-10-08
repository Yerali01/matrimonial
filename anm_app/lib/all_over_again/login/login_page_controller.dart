import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:anm_app/all_over_again/routes/app_pages.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPageController extends GetxController {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isFormValid = false;

  final GetStorage _getStorage = GetStorage();

  AuthRepository authRepository;

  LoginPageController(this.authRepository);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailTextController.dispose();
    passwordTextController.dispose();
  }

  void clearTextEditingControllers() {
    passwordTextController.clear();
    emailTextController.clear();
  }

  void validateAndLogin({
    required String email,
    required String password,
  }) async {
    // isFormValid = formKey.currentState?.validate();
    if (email.isNotEmpty && password.isNotEmpty) {
      isFormValid = true;
    }

    if (!isFormValid) {
      return;
    } else {
      formKey.currentState?.save();
      try {
        await authRepository.login({
          "email": emailTextController.text,
          "password": passwordTextController.text,
        }).then((value) {
          clearTextEditingControllers();

          _getStorage.write("userId", value.userId);
          _getStorage.write("email", email);
          _getStorage.write("sessionId", value.$id);

          Get.offAllNamed(Routes.tabsPage);
        }).catchError((error) {
          if (error is AppwriteException) {
            print('${error.response["message"]}');
          } else {
            print("OK");
          }
        });
      } catch (e) {
        SnackBar(
          content: Text("$e"),
        );
      }
    }
  }
}
