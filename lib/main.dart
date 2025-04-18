import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'controller/login_controller.dart';
import 'controller/welcome_screen_controller.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(WelcomeScreenController(),tag: 'welcome_screen_controller');
  Get.put(LoginController(),tag: 'login_controller');
  //AAA
  await Firebase.initializeApp();
  runApp(const MyApp());
}

