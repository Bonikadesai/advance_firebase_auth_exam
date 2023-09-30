import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splesh_Screen extends StatefulWidget {
  const Splesh_Screen({super.key});

  @override
  State<Splesh_Screen> createState() => _Splesh_ScreenState();
}

class _Splesh_ScreenState extends State<Splesh_Screen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Get.offAndToNamed("/login_page");
      },
    );
    return Scaffold(
      body: Center(
          child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/splesh.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
      )),
    );
  }
}
