import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:anm_app/all_over_again/login/login_page_controller.dart';

class AccountPageController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isFormValid = false;
  AuthRepository authRepository;
  late String email;
  final newPasswordTextController = TextEditingController();

  AccountPageController(this.authRepository);

  final GetStorage _getStorage = GetStorage();

  var imagePathProfile = "".obs;
  final ImagePicker _picker = ImagePicker();
  late String uploadedFileId;

  // late String? username;
  // TextEditingController bioTextController = TextEditingController();

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
  }

  void selectImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePathProfile.value = image.path;
      // _getStorage.write(key, value)
    } else {
      print("SELECT IMAGE");
    }
  }

  // Future<String> getEmail() async {
  //   email = Get.find<LoginPageController>().emailTextController.text;
  //   return email;
  // }

  // Future resetPasswordSave(String password) async {
  //   await authRepository.resetPassword(password);
  // }

  void clearTextEditingControllers() {}

  // void validateAndSave({
  //   required String name,
  //   required String password,
  // }) async {
  //   isFormValid = formKey.currentState!.validate();
  //   if (!isFormValid) {
  //     return;
  //   } else {
  //     formKey.currentState!.save();
  //     if (imagePath.isNotEmpty) {
  //       try {
  //         await authRepository.uploadImage(imagePath.value).then((value) async {
  //           uploadedFileId = value.$id;
  //           await authRepository
  //               .createUser({
  //                 "name": name,
  //                 "password": password,
  //                 "createdBy": _getStorage.read("userId"),
  //                 "image": uploadedFileId,
  //                 "createdAt": DateTime.now().toIso8601String(),
  //               })
  //               .then((value) {})
  //               .catchError((error) async {
  //                 if (error is AppwriteException) {
  //                   print('${error.response["message"]}');
  //                 } else {
  //                   print("OK");
  //                 }

  //                 await authRepository.deleteImage(uploadedFileId);
  //               });
  //         }).catchError((error) {
  //           if (error is AppwriteException) {
  //             print('${error.response["message"]}');
  //           } else {
  //             print("OK");
  //           }
  //         });
  //       } catch (e) {
  //         SnackBar(
  //           content: Text("$e"),
  //         );
  //       }
  //     } else {
  //       print("SELECT IMAGE");
  //     }
  //   }
  // }
}
