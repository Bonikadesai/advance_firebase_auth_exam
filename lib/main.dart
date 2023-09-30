import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prectical_exam/view/screen/home_page.dart';
import 'package:prectical_exam/view/screen/login_page.dart';
import 'package:prectical_exam/view/screen/splesh.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => Splesh_Screen(),
        ),
        GetPage(
          name: '/login_page',
          page: () => Login_Page(),
        ),
        GetPage(
          name: '/home_page',
          page: () => HomePage(),
        ),
      ],
    ),
  );
}
