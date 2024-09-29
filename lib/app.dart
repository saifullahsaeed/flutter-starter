import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/Services/authentication.dart';
import 'package:starter/router.dart';
import 'package:starter/style/theme.dart';
import 'package:starter/utils/consts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultGlobalState: true,
      title: appTitle,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      getPages: routes,
      onInit: () {
        Get.put(
          GlobalAuthenticationService(),
          permanent: true,
        );
      },
    );
  }
}
