import 'package:anm_app/all_over_again/provider/appwrite_constants.dart';
import 'package:anm_app/all_over_again/provider/appwrite_provider.dart';
import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class ForgotPasswordController extends GetxController {
  final emailTextController = TextEditingController();
  final newPasswordTextController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isFormValid = false;

  final GetStorage _getStorage = GetStorage();

  AuthRepository authRepository;

  ForgotPasswordController(this.authRepository);

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
    newPasswordTextController.dispose();
  }

  void clearTextEditingControllers() {
    newPasswordTextController.clear();
    emailTextController.clear();
  }

  Future resetPasswordSave(String password) async {
    await authRepository.resetPassword(password);
  }
}
//забыл пароль
//получать инфу
//фильтр