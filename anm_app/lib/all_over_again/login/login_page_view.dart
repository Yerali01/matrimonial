import 'package:anm_app/all_over_again/forgot_password/forgot_password_view.dart';
import 'package:anm_app/all_over_again/login/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:anm_app/all_over_again/register/register_page_view.dart';
import 'package:get/get.dart';

class LoginPageView extends GetView<LoginPageController> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  bool loading = false;

  // signIn() async {
  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return const Dialog(
  //           backgroundColor: Colors.transparent,
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: [
  //               CircularProgressIndicator(),
  //             ],
  //           ),
  //         );
  //       });

  //   // savePreferences();

  //   try {
  //     final AuthAPI appwrite = context.read<AuthAPI>();
  //     await appwrite.createEmailSession(
  //       email: emailTextController.text,
  //       password: passwordTextController.text,
  //     );
  //     // Navigator.pop(context);
  //     Navigator.of(context).pushReplacementNamed(TabsPage.routeName);
  //   } on AppwriteException catch (e) {
  //     Navigator.pop(context);
  //     showAlert(title: 'Login failed', text: e.message.toString());
  //   }
  // }

  // savePreferences() {
  //   final AuthAPI appwrite = context.read<AuthAPI>();
  //   appwrite.updatePreferences(
  //     profile_type: widget.profile_type,
  //     salutation: widget.salutation,
  //     first_name: widget.first_name,
  //     middle_name: widget.middle_name,
  //     last_name: widget.last_name,
  //     gender: widget.gender,
  //     phone_number: widget.phone_number,
  //     email: widget.email,
  //     country: widget.country,
  //     state: widget.state,
  //     zip_code: widget.zip_code,
  //     city: widget.city,
  //     address: widget.address,
  //     building: widget.building,
  //     pastor_name: widget.pastor_name,
  //     church_name: widget.church_name,
  //     city_name: widget.city_name,
  //     contact_number: widget.contact_number,
  //     education: widget.education,
  //     college: widget.college,
  //     other_college: widget.other_college,
  //     occupation: widget.occupation,
  //     annual_income: widget.annual_income,
  //     maritial_status: widget.maritial_status,
  //     no_of_children: widget.no_of_children,
  //     mother_tongue: widget.mother_tongue,
  //     denomination: widget.denomination,
  //     sub_castle: widget.sub_castle,
  //     family_values: widget.family_values,
  //     family_type: widget.family_type,
  //     family_income: widget.family_income,
  //     father_status: widget.father_status,
  //     mother_status: widget.mother_status,
  //     no_of_brothers: widget.no_of_brothers,
  //     no_of_sisters: widget.no_of_sisters,
  //     religious_value: widget.religious_value,
  //     diet: widget.diet,
  //     drink: widget.drink,
  //     smoke: widget.smoke,
  //     languages_known: widget.languages_known,
  //     hobbies: widget.hobbies,
  //     age: widget.age,
  //     birth_place: widget.birth_place,
  //     height: widget.height,
  //     weight: widget.weight,
  //     body_type: widget.body_type,
  //     skin_tone: widget.skin_tone,
  //     any_disability: widget.any_disability,
  //     blood_group: widget.blood_group,
  //     about_me_fav_thing: widget.about_me_fav_thing,
  //   );
  //   const snackbar = SnackBar(content: Text('Preferences updated!'));
  //   ScaffoldMessenger.of(context).showSnackBar(snackbar);
  // }

  // showAlert({required String title, required String text}) {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text(title),
  //           content: Text(text),
  //           actions: [
  //             ElevatedButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: const Text('Ok'))
  //           ],
  //         );
  //       });
  // }

  // signInWithProvider(String provider) {
  //   try {
  //     context.read<AuthAPI>().signInWithProvider(provider: provider);
  //   } on AppwriteException catch (e) {
  //     showAlert(title: 'Login failed', text: e.message.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Matrimonial App'),
          ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: Get.find<LoginPageController>().emailTextController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller:
                    Get.find<LoginPageController>().passwordTextController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  // signIn();
                  // controller.validateAndLogin(
                  Get.find<LoginPageController>().validateAndLogin(
                    email: Get.find<LoginPageController>()
                        .emailTextController
                        .text,
                    password: Get.find<LoginPageController>()
                        .passwordTextController
                        .text,
                  );
                },
                icon: const Icon(Icons.login),
                label: const Text("Sign in"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPageView(),
                    ),
                  );
                },
                child: const Text('Create Account'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
