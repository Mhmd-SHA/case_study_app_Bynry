import 'package:case_study_app/provider/service_provider.dart';
import 'package:case_study_app/const/app_theme.dart';
import 'package:case_study_app/view/pages/Login_Page/login_page.dart';
import 'package:case_study_app/view/pages/splash_page.dart';
import 'package:case_study_app/view/pages/main_page/main_page.dart';
import 'package:case_study_app/provider/authentication_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthenticationProvider()),
        ChangeNotifierProvider(create: (context) => ServiceProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bynry App Demo',
      theme: AppTheme.lightTheme,
      home: SplashPage(),
    );
  }
}
