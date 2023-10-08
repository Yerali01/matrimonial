import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:anm_app/all_over_again/routes/app_pages.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPageController extends GetxController {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  // final nameTextController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();
  bool isFormValid = false;
  AuthRepository authRepository;

  RegisterPageController(this.authRepository);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    // Future.delayed(
    //     const Duration(seconds: 3), () => Get.offAllNamed(Routes.login));
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

  void validateAndSignup({
    required String email,
    required String password,
  }) async {
    // isFormValid = formKey.currentState!.validate();
    if (email.isNotEmpty && password.isNotEmpty) {
      isFormValid = true;
    }

    if (!isFormValid) {
      return;
    } else {
      formKey.currentState?.save();
      try {
        await authRepository.signup({
          "userId": ID.unique(),
          // "email": emailTextController.text,
          "email": email,
          // "password": passwordTextController.text,
          "password": password,
        }).then((value) {
          clearTextEditingControllers();
          Get.offAllNamed(Routes.login);
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
