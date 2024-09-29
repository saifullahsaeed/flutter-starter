import 'package:get/get.dart';
import 'package:starter/middlewares/auth_middleware.dart';
import 'package:starter/screens/auth/auth.dart';
import 'package:starter/screens/auth/forgot_password.dart';
import 'package:starter/screens/auth/login.dart';
import 'package:starter/screens/auth/reset_password.dart';
import 'package:starter/screens/auth/signup.dart';
import 'package:starter/screens/home.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => const HomeScreen(),
    middlewares: [
      AuthMiddleware(),
    ],
  ),
  GetPage(
    name: '/auth',
    page: () => const AuthScreen(),
    children: [
      GetPage(
        name: '/login',
        page: () => const LoginScreen(),
      ),
      GetPage(
        name: '/signup',
        page: () => const SignupScreen(),
      ),
      GetPage(
        name: '/forgot',
        page: () => const ForgotPassword(),
      ),
      GetPage(
        name: '/reset',
        page: () => const ResetPassword(),
      ),
    ],
  ),
];
