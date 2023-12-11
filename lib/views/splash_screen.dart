import 'dart:async';
import 'package:hybrid_fintech_app/home.dart';
import 'package:hybrid_fintech_app/navbar.dart';
import 'package:hybrid_fintech_app/views/heartbeat_anim.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import '../../utils/colornotifire.dart';
import '../../utils/media.dart';
import 'package:provider/provider.dart';
// import 'package:monicredit/navbar.dart';
// import 'package:monicredit/pages/app/onboarding.dart';
// import 'package:monicredit/pages/app/onboarding2.dart';
// import 'package:monicredit/pages/auth/pin/createpin.dart';
// import 'package:monicredit/pages/auth/pin/loginwithpin.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import '../../configs/auth.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    checkAuth();
  }

  Future<void> checkAuth() async {
    final prefs = await SharedPreferences.getInstance();
    // final bool isLoggedIn = await Auth.isLoggedIn();
    // prefs.setBool('authenticated', false);
    // var pin = prefs.getString('login_pin');
    Timer(const Duration(seconds: 3), () {
      Get.to(const Navbar());
      // if (isLoggedIn) {
      //   if (pin != null) {
      //   } else {
      //     prefs.clear();
      //     Get.to(const Onboarding2());
      //   }
      // } else {
      //   Get.to(const Onboarding2());
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: height,
                  width: width,
                  // child: Image.asset(
                  //   "images/splash.png",
                  //   fit: BoxFit.cover,
                  // ),
                ),
                HeartbeatAnimation(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height / 2.4,
                      ),
                      Center(
                        child: Image.asset(
                          "assets/hybrid_logo.png",
                          height: height / 7,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}