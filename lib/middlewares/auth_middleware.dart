import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/Services/authentication.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    GlobalAuthenticationService auth = Get.find();
    if (!auth.isAuthenticated) {
      return const RouteSettings(name: '/auth');
    }
    return null;
  }
}
