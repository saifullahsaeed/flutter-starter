import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/style/text.dart';
import 'package:starter/utils/consts.dart';
import 'package:starter/widgets/button.dart';
import 'package:starter/widgets/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    controller: TextEditingController(),
                    context: context,
                  ),
                  const SizedBox(height: 10),
                  buildInput(
                    label: 'Password',
                    hint: 'Enter your password',
                    inputType: TextInputType.visiblePassword,
                    controller: TextEditingController(),
                    isPassword: true,
                    context: context,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: Get.width,
                    child: MainButton(
                      label: 'Login',
                      onPressed: () {},
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
                          Get.toNamed('/auth/signup');
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
