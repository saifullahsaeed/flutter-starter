import 'package:get/get.dart';

class GlobalAuthenticationService extends GetxController {
  final RxBool _isAuthenticated = false.obs;
  bool get isAuthenticated => _isAuthenticated.value;
  set isAuthenticated(bool value) => _isAuthenticated.update((val) => value);

  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 1));
    isAuthenticated = true;
  }

  Future<void> logout() async {
    await Future.delayed(const Duration(seconds: 1));
    isAuthenticated = false;
  }
}
