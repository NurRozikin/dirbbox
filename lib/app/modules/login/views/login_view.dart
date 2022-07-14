import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 90, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Dirbbox',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 223,
                  child: Text(
                    'Best cloud storage platform for all business and individuals to manage there data \n\nJoin For Free.',
                    style: TextStyle(fontSize: 14, fontFamily: 'Gilroy'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFEEF7FE),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/fingerprint.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Smart Id',
                              style: TextStyle(color: Color(0xFF567DF4)),
                            )
                          ],
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF567DF4),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {
                          Get.offAllNamed(Routes.HOME);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign In',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset('assets/icons/arrow.png'),
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Use Social Login"),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  'assets/icons/Instagram Logo.png')),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  Image.asset('assets/icons/Twitter Logo.png')),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  'assets/icons/Facebook Logo.png')),
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Create an account",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF1B1D28)),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
