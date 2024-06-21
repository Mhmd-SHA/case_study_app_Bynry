import 'package:case_study_app/view/pages/Login_Page/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'main_page/main_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        init();
      },
    );
  }

  init() async {
    print("init called");
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    firebaseAuth.currentUser != null
        ? Get.offAll(() => MainPage())
        : Get.offAll(
            () => LoginPage(),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            FlutterLogo(
              size: 200,
            ),
            Shimmer.fromColors(
                child: FlutterLogo(
                  size: 200,
                ),
                baseColor: Colors.transparent,
                highlightColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
