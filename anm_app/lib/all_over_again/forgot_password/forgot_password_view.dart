import 'package:anm_app/all_over_again/forgot_password/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password?"),
        centerTitle: true,
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
                    Get.find<ForgotPasswordController>().emailTextController,
                decoration: const InputDecoration(
                  labelText: 'Your Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: Get.find<ForgotPasswordController>()
                    .newPasswordTextController,
                decoration: const InputDecoration(
                  labelText: 'New Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<ForgotPasswordController>().resetPasswordSave(
                    Get.find<ForgotPasswordController>()
                        .newPasswordTextController
                        .text,
                  );
                },
                child: const Text("Reset Password"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
