import 'dart:io';
import 'package:anm_app/all_over_again/forgot_password/forgot_password_view.dart';
import 'package:anm_app/all_over_again/login/login_page_controller.dart';
import 'package:anm_app/all_over_again/profile/account_page_binding.dart';
import 'package:anm_app/all_over_again/profile/account_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:anm_app/utils/helper.dart';

class AccountPageView extends GetView<AccountPageController> {
  AccountPageView({Key? key}) : super(key: key);

  final GetStorage _getStorage = GetStorage();

  // static const routeName = "/accountPage";

//   @override
//   _AccountPageViewState createState() => _AccountPageViewState();
// }

// class _AccountPageViewState extends State<AccountPageView> {
  // late String? username;
  // TextEditingController bioTextController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  // final AuthAPI appwrite = context.read<AuthAPI>();
  //   email = appwrite.email;
  //   username = appwrite.username;
  //   appwrite.getUserPreferences().then((value) {
  //     if (value.data.isNotEmpty) {
  //       setState(() {
  //         bioTextController.text = value.data['bio'];
  //       });
  //     }
  //   });
  // }

  // savePreferences() {
  //   final AuthAPI appwrite = context.read<AuthAPI>();
  //   // appwrite.updatePreferences(bio: bioTextController.text);
  //   const snackbar = SnackBar(content: Text('Preferences updated!'));
  //   ScaffoldMessenger.of(context).showSnackBar(snackbar);
  // }

  // signOut() {
  //   final AuthAPI appwrite = context.read<AuthAPI>();
  //   appwrite.signOut();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Helper.getScreenHeight(context) / 4,
                width: Helper.getScreenWidth(context),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const CircleAvatar(
                      //   radius: 50,
                      //   backgroundColor: Colors.grey,

                      // ),
                      Obx(
                        () => Get.find<AccountPageController>()
                                    .imagePathProfile
                                    .value ==
                                ''
                            ? const CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.grey,
                              )
                            : CircleAvatar(
                                radius: 50,
                                backgroundImage: FileImage(
                                  File(Get.find<AccountPageController>()
                                      .imagePathProfile
                                      .value),
                                ),
                              ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.black),
                        onPressed: () {
                          Get.find<AccountPageController>().selectImage();
                        },
                      ),
                      Text(
                        _getStorage.read("email"),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.black),
                        onPressed: () {
                          Get.find<AccountPageController>().selectImage();
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text("Edit Basic Details"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text("Edit Personal Details"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text("Edit Family Details"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text("Change Password"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordView(),
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          Text("Change Password"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text("Contact Helpline"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
