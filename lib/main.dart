import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/Services/local_storage.dart';
import 'package:starter/app.dart';

void main() async {
  await Get.putAsync(() => LocalStorageService().init());
  runApp(const MyApp());
}
