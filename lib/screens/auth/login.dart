import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/screens/auth/controllers/auth_controller.dart';
import 'package:starter/style/text.dart';
import 'package:starter/utils/load_action.dart';
import 'package:starter/utils/validators.dart';
import 'package:starter/widgets/button.dart';
import 'package:starter/widgets/input.dart';

class LoginScreen extends GetView<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: controller.loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 200,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Login with your account ',
                    textAlign: TextAlign.center,
                    style: titleTextStyle,
                  ),
                  const SizedBox(height: 20),
                  buildInput(
                    label: 'Email',
                    hint: 'Enter your email',
                    inputType: TextInputType.emailAddress,
                    controller: emailController,
                    context: context,
                    validator: (value) => emailValidator(value),
                  ),
                  const SizedBox(height: 10),
                  buildInput(
                    label: 'Password',
                    hint: 'Enter your password',
                    inputType: TextInputType.visiblePassword,
                    controller: passwordController,
                    isPassword: true,
                    context: context,
                    validator: (value) => passwordValidator(value),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: Get.width,
                    child: MainButton(
                      label: 'Login',
                      onPressed: () {
                        if (controller.loginFormKey.currentState!.validate()) {
                          loadAction(controller.login(
                            emailController.text,
                            passwordController.text,
                          ));
                        }
                      },
                      icon: Icons.login_rounded,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButtonCustom(
                        onPressed: () {
                          Get.toNamed('/auth/forgot');
                        },
                        label: 'Forgot Password?',
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/auth/register');
                        },
                        child: const Text('Create Account'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
