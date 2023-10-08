import 'package:anm_app/all_over_again/register/register_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class RegisterPage extends StatefulWidget {

//   RegisterPage({
//     Key? key,
//   }) : super(key: key);

//   static const routeName = "/registerPage";

//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final emailTextController = TextEditingController();
//   final passwordTextController = TextEditingController();
//   late String? email;
//   late String? username;

//   @override
//   void initState() {
//     super.initState();
//     final AuthAPI appwrite = context.read<AuthAPI>();
//     email = appwrite.email;
//     username = appwrite.username;
//   }

//   createAccount() async {
//     showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (BuildContext context) {
//           return Dialog(
//             backgroundColor: Colors.transparent,
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   CircularProgressIndicator(),
//                 ]),
//           );
//         });
//     try {
//       final AuthAPI appwrite = context.read<AuthAPI>();
//       await appwrite.createUser(
//         email: emailTextController.text,
//         password: passwordTextController.text,
//         // name: widget.first_name,
//       );
//       // savePreferences();

//       //create all preferences

//       Navigator.pop(context);
//       const snackbar = SnackBar(content: Text('Account created!'));
//       ScaffoldMessenger.of(context).showSnackBar(snackbar);
//     } on AppwriteException catch (e) {
//       Navigator.pop(context);
//       showAlert(title: 'Account creation failed', text: e.message.toString());
//     }
//   }

//   showAlert({required String title, required String text}) {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text(title),
//             content: Text(text),
//             actions: [
//               ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text('Ok'))
//             ],
//           );
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Create your account'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(32.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               TextField(
//                 controller: emailTextController,
//                 decoration: const InputDecoration(
//                   labelText: 'Email',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 controller: passwordTextController,
//                 decoration: const InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(),
//                 ),
//                 obscureText: true,
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton.icon(
//                 onPressed: () {
//                   createAccount();
//                 },
//                 icon: const Icon(Icons.app_registration),
//                 label: const Text('Sign up'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class RegisterPageView extends GetView<RegisterPageController> {
// StatefulWidget {
//   const RegisterPageView({Key? key}) : super(key: key);

//   static const routeName = "/registerPage";

//   @override
//   _RegisterPageViewState createState() => _RegisterPageViewState();
// }

// class _RegisterPageViewState extends State<RegisterPageView> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  // createAccount() async {
  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return Dialog(
  //           backgroundColor: Colors.transparent,
  //           child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: const [
  //                 CircularProgressIndicator(),
  //               ]),
  //         );
  //       });
  //   try {
  //     final AuthAPI appwrite = context.read<AuthAPI>();
  //     await appwrite.createUser(
  //       email: emailTextController.text,
  //       password: passwordTextController.text,
  //     );
  //     Navigator.pop(context);
  //     const snackbar = SnackBar(content: Text('Account created!'));
  //     ScaffoldMessenger.of(context).showSnackBar(snackbar);
  //   } on AppwriteException catch (e) {
  //     Navigator.pop(context);
  //     showAlert(title: 'Account creation failed', text: e.message.toString());
  //   }
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create your account'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller:
                    // Get.find<RegisterPageController>().emailTextController,
                    controller.emailTextController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller:
                    Get.find<RegisterPageController>().passwordTextController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  // createAccount();
                  Get.find<RegisterPageController>().validateAndSignup(
                      email: Get.find<RegisterPageController>()
                          .emailTextController
                          .text,
                      password: Get.find<RegisterPageController>()
                          .passwordTextController
                          .text);
                },
                icon: const Icon(Icons.app_registration),
                label: const Text('Sign up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
