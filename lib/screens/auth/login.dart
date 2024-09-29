import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/style/text.dart';
import 'package:starter/widgets/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login with your account ',
                    textAlign: TextAlign.center,
                    style: titleTextStyle,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onTapOutside: (focus) {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onTapOutside: (focus) {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
