import 'package:case_study_app/const/app_colors.dart';
import 'package:case_study_app/view/pages/Login_Page/login_page.dart';
import 'package:case_study_app/utils/snackbar_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationProvider extends ChangeNotifier {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //signInWithEmailAndPassword
  Future<bool> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      showloader();
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        firestore.collection("users").doc(userCredential.user!.uid).set({
          "uid": userCredential.user!.uid,
          "email": userCredential.user!.email,
        });

        stoploader();
        SnackbarHelper.showSuccessSnackBar(
          title: "Success",
          message: "Logged in Successfully",
        );

        return true;
      }
      stoploader();
    } catch (e) {
      stoploader();
      SnackbarHelper.showFailureSnackBar(
        title: "SignIn Failed",
        message: "${e.toString()}",
      );

      // throw Exception(e);
    }
    return false;
  }

  //signupWithEmailAndPassword
  Future<bool> signupWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      showloader();
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      if (userCredential.user != null) {
        firestore.collection("users").doc(userCredential.user!.uid).set(
          {
            "uid": userCredential.user!.uid,
            "email": userCredential.user!.email,
          },
        );
        stoploader();
        SnackbarHelper.showSuccessSnackBar(
          title: "SignUp Success",
          message: "Account Created Successfully",
        );

        return true;
      }
      stoploader();
    } catch (e) {
      stoploader();
      SnackbarHelper.showFailureSnackBar(
        title: "SignUp Failed",
        message: "${e.toString()}",
      );
    }
    return false;
  }

//signout
  void signout() async {
    try {
      await firebaseAuth.signOut();
      SnackbarHelper.showSuccessSnackBar(
        title: "SignOut Success",
        message: "Signed Out Successfully",
      );
    } catch (e) {
      print(e);
    }
    Get.offAll(() => LoginPage());
    notifyListeners();
  }

  void showloader() {
    Get.dialog(
      PopScope(
        canPop: true,
        child: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      barrierDismissible: false,
    );
    notifyListeners();
  }

  void stoploader() {
    Get.back();
    notifyListeners();
  }
}
