import 'package:get/get.dart';
import 'package:starter/middlewares/auth_middleware.dart';
import 'package:starter/screens/auth/auth.dart';
import 'package:starter/screens/auth/controllers/auth_controller.dart';
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
        page: () => LoginScreen(),
        bindings: [
          BindingsBuilder(() {
            Get.lazyPut(() => AuthController());
          }),
        ],
      ),
      GetPage(
        name: '/signup',
        page: () => const SignupScreen(),
        bindings: [
          BindingsBuilder(() {
            Get.lazyPut(() => AuthController());
          }),
        ],
      ),
      GetPage(
        name: '/forgot',
        page: () => const ForgotPassword(),
        bindings: [
          BindingsBuilder(() {
            Get.lazyPut(() => AuthController());
          }),
        ],
      ),
      GetPage(
        name: '/reset',
        page: () => ResetPassword(
          token: Get.parameters['token']!,
        ),
        bindings: [
          BindingsBuilder(() {
            Get.lazyPut(() => AuthController());
          }),
        ],
      ),
    ],
  ),
];
