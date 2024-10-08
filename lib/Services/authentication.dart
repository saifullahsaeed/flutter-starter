import 'package:get/get.dart';
import 'package:starter/utils/snackbar.dart';

class GlobalAuthenticationService extends GetxController {
  final RxBool _isAuthenticated = false.obs;
  bool get isAuthenticated => _isAuthenticated.value;
  set isAuthenticated(bool value) => _isAuthenticated.update((val) => value);

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      isAuthenticated = true;
    } catch (e) {
      showSnackBar(title: 'Error', message: e.toString(), type: 'error');
    }
  }

  Future<void> logout() async {
    await Future.delayed(const Duration(seconds: 1));
    isAuthenticated = false;
  }
}
