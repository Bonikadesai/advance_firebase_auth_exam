import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/auth_helper.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = "";
  String password = "";

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/splesh.png",
            ),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Choose your Role..",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: "Admin",
                        titleStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        content: Form(
                          key: loginKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Get.height * 0.0013,
                                ),
                                Transform.scale(
                                  scale: 0.85,
                                  child: TextFormField(
                                    controller: emailController,
                                    textInputAction: TextInputAction.next,
                                    validator: (val) =>
                                        (val!.isEmpty) ? "Enter email" : null,
                                    onSaved: (val) {
                                      email = val!;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter roles wise email id..",
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xff39579a),
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Transform.scale(
                                  scale: 0.85,
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: passwordController,
                                    textInputAction: TextInputAction.done,
                                    validator: (val) => (val!.isEmpty)
                                        ? "Enter password"
                                        : null,
                                    onSaved: (val) {
                                      password = val!;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter your password..",
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xff39579a),
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "facebook admin",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with Facebook",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "google admin",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with Google",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "whatsApp admin",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with WhatsApp",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "gitHub admin",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with GitHub",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              if (loginKey.currentState!.validate()) {
                                loginKey.currentState!.save();

                                await FireStoreHelper.fireStoreHelper
                                    .addUser(email: email, password: password);
                                emailController.clear();
                                passwordController.clear();
                                Get.back();

                                Get.snackbar(
                                  "Sing In",
                                  "Sing In Successfull for $email",
                                  backgroundColor: Colors.green,
                                );
                                Get.offAllNamed("/home_page", arguments: email);
                                email = "";
                                password = "";
                              }
                            },
                            child: Text("Login"),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              emailController.clear();
                              passwordController.clear();
                              email = "";
                              password = "";
                            },
                            child: Text("Reset"),
                          ),
                        ]);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 16, right: 16, left: 16),
                    child: Container(
                      height: 240,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/admin.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Admin",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white38,
                        ),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.grey,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: "Manager",
                        titleStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        content: Form(
                          key: loginKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Get.height * 0.0013,
                                ),
                                Transform.scale(
                                  scale: 0.85,
                                  child: TextFormField(
                                    controller: emailController,
                                    textInputAction: TextInputAction.next,
                                    validator: (val) =>
                                        (val!.isEmpty) ? "Enter email" : null,
                                    onSaved: (val) {
                                      email = val!;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter roles wise email id..",
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xff39579a),
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Transform.scale(
                                  scale: 0.85,
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: passwordController,
                                    textInputAction: TextInputAction.done,
                                    validator: (val) => (val!.isEmpty)
                                        ? "Enter password"
                                        : null,
                                    onSaved: (val) {
                                      password = val!;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter your password..",
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xff39579a),
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "facebook Manager",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with Facebook",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "google Manager",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with Google",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "whatsApp Manager",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with WhatsApp",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "gitHub Manager",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with GitHub",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              if (loginKey.currentState!.validate()) {
                                loginKey.currentState!.save();

                                await FireStoreHelper.fireStoreHelper
                                    .addUser(email: email, password: password);
                                emailController.clear();
                                passwordController.clear();
                                Get.back();

                                Get.snackbar(
                                  "Sing In",
                                  "Sing In Successfull for $email",
                                  backgroundColor: Colors.green,
                                );
                                Get.offAllNamed("/home_page", arguments: email);
                                email = "";
                                password = "";
                              }
                            },
                            child: Text("Login"),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              emailController.clear();
                              passwordController.clear();
                              email = "";
                              password = "";
                            },
                            child: Text("Reset"),
                          ),
                        ]);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 16, right: 16, left: 16),
                    child: Container(
                      height: 240,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/manager.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Manager",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white38,
                        ),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.grey,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: "Clerk",
                        titleStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        content: Form(
                          key: loginKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Get.height * 0.0013,
                                ),
                                Transform.scale(
                                  scale: 0.85,
                                  child: TextFormField(
                                    controller: emailController,
                                    textInputAction: TextInputAction.next,
                                    validator: (val) =>
                                        (val!.isEmpty) ? "Enter email" : null,
                                    onSaved: (val) {
                                      email = val!;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter roles wise email id..",
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xff39579a),
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Transform.scale(
                                  scale: 0.85,
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: passwordController,
                                    textInputAction: TextInputAction.done,
                                    validator: (val) => (val!.isEmpty)
                                        ? "Enter password"
                                        : null,
                                    onSaved: (val) {
                                      password = val!;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter your password..",
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xff39579a),
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "facebook Clerk",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with Facebook",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "google Clerk",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with Google",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "whatsApp Clerk",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with WhatsApp",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "gitHub Clerk",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with GitHub",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              if (loginKey.currentState!.validate()) {
                                loginKey.currentState!.save();

                                await FireStoreHelper.fireStoreHelper
                                    .addUser(email: email, password: password);
                                emailController.clear();
                                passwordController.clear();
                                Get.back();

                                Get.snackbar(
                                  "Sing In",
                                  "Sing In Successfull for $email",
                                  backgroundColor: Colors.green,
                                );
                                Get.offAllNamed("/home_page", arguments: email);
                                email = "";
                                password = "";
                              }
                            },
                            child: Text("Login"),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              emailController.clear();
                              passwordController.clear();
                              email = "";
                              password = "";
                            },
                            child: Text("Reset"),
                          ),
                        ]);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 16, right: 16, left: 16),
                    child: Container(
                      height: 240,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/clerk.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Clerk",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white38,
                        ),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.grey,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: "Employee",
                        titleStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        content: Form(
                          key: loginKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Get.height * 0.0013,
                                ),
                                Transform.scale(
                                  scale: 0.85,
                                  child: TextFormField(
                                    controller: emailController,
                                    textInputAction: TextInputAction.next,
                                    validator: (val) =>
                                        (val!.isEmpty) ? "Enter email" : null,
                                    onSaved: (val) {
                                      email = val!;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter roles wise email id..",
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xff39579a),
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Transform.scale(
                                  scale: 0.85,
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: passwordController,
                                    textInputAction: TextInputAction.done,
                                    validator: (val) => (val!.isEmpty)
                                        ? "Enter password"
                                        : null,
                                    onSaved: (val) {
                                      password = val!;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter your password..",
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xff39579a),
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "facebook employee",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with Facebook",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "google employee",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with Google",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "whatsApp employee",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with WhatsApp",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "gitHub employee",
                                      titleStyle: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                      ),
                                      content: Form(
                                        key: loginKey,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: Get.height * 0.0013,
                                            ),
                                            TextFormField(
                                              controller: emailController,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter email"
                                                  : null,
                                              onSaved: (val) {
                                                email = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter roles wise email id..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.015,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              controller: passwordController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (val) => (val!.isEmpty)
                                                  ? "Enter password"
                                                  : null,
                                              onSaved: (val) {
                                                password = val!;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                hintText:
                                                    "Enter your password..",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide(
                                                    color: Color(0xff39579a),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (loginKey.currentState!
                                                        .validate()) {
                                                      loginKey.currentState!
                                                          .save();

                                                      await FireStoreHelper
                                                          .fireStoreHelper
                                                          .addUser(
                                                              email: email,
                                                              password:
                                                                  password);
                                                      emailController.clear();
                                                      passwordController
                                                          .clear();
                                                      Get.back();

                                                      Get.snackbar(
                                                        "Sing In",
                                                        "Sing In Successfull for $email",
                                                        backgroundColor:
                                                            Colors.green,
                                                      );
                                                      Get.offAllNamed(
                                                          "/home_page",
                                                          arguments: email);
                                                      email = "";
                                                      password = "";
                                                    }
                                                  },
                                                  child: Text("Login"),
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.03,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    emailController.clear();
                                                    passwordController.clear();
                                                    email = "";
                                                    password = "";
                                                  },
                                                  child: Text("Reset"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Login with GitHub",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              if (loginKey.currentState!.validate()) {
                                loginKey.currentState!.save();

                                await FireStoreHelper.fireStoreHelper
                                    .addUser(email: email, password: password);
                                emailController.clear();
                                passwordController.clear();
                                Get.back();

                                Get.snackbar(
                                  "Sing In",
                                  "Sing In Successfull for $email",
                                  backgroundColor: Colors.green,
                                );
                                Get.offAllNamed("/home_page", arguments: email);
                                email = "";
                                password = "";
                              }
                            },
                            child: Text("Login"),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              emailController.clear();
                              passwordController.clear();
                              email = "";
                              password = "";
                            },
                            child: Text("Reset"),
                          ),
                        ]);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 16, right: 16, left: 16),
                    child: Container(
                      height: 240,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/employee.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Employee",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white38,
                        ),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.grey,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
