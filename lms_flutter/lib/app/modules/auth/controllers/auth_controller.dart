import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms_flutter/app/routes/app_pages.dart';
import 'package:lms_flutter/initclient.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';

class AuthController extends GetxController {
  final isAdminAuth = Get.currentRoute.split("/").last.toLowerCase() == "admin";
  final authController = EmailAuthController(client.modules.auth);

  final loginkey = GlobalKey<FormState>();
  final registrekey = GlobalKey<FormState>();
  final verificationkey = GlobalKey<FormState>();

  final email = TextEditingController();
  final pwd = TextEditingController();

  final username = TextEditingController();
  final createemail = TextEditingController();
  final createpwd = TextEditingController();
  final verificationCode = TextEditingController();
  void login() async {
    try {
      if (loginkey.currentState!.validate()) {
        final user = await authController.signIn(email.text, pwd.text);
        if (user != null) {
          Get.offAllNamed(Routes.HOME);
        } else {
          Get.snackbar("Error", "user not found");
        }
      }
    } catch (e) {
      Get.snackbar("Error", "$e");
    }
  }

  Future<void> registre() async {
    if (registrekey.currentState!.validate()) {
      await authController.createAccountRequest(
          username.text, createemail.text, createpwd.text);
      Get.defaultDialog(
          barrierDismissible: false,
          title: "Verfication code",
          middleText: "Wrtie verification code",
          onConfirm: verifyAccount,
          content: Form(
              key: verificationkey,
              child: TextFormField(
                controller: verificationCode,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field is required";
                  }
                  return null;
                },
              )));
    }
  }

  void verifyAccount() async {
    try {
      if (verificationkey.currentState!.validate()) {
        var user = await authController.validateAccount(
            createemail.text, verificationCode.text);
        if (user != null) {
          user = await authController.signIn(createemail.text, createpwd.text);
          await client.users.createUsers(isAdmin: isAdminAuth, userId: 100);
          Get.offAllNamed(Routes.HOME);
        } else {
          Get.snackbar("Error", "verififcation code incorrect");
        }
      }
    } catch (e) {
      Get.snackbar("Error", "$e");
    }
  }
}