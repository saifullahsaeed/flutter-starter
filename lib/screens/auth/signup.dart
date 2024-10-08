import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/style/text.dart';
import 'package:starter/widgets/button.dart';
import 'package:starter/widgets/input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                    'Create an account',
                    textAlign: TextAlign.center,
                    style: titleTextStyle,
                  ),
                  const SizedBox(height: 20),
                  buildInput(
                    label: 'Name',
                    hint: 'Enter your name',
                    inputType: TextInputType.text,
                    controller: TextEditingController(),
                    context: context,
                  ),
                  const SizedBox(height: 10),
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
                      label: 'Signup',
                      icon: Icons.person_add,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/auth/login');
                    },
                    child: Text(
                      'Already have an account? Login',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16,
                      ),
                    ),
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
