import 'package:case_study_app/view/pages/Login_Page/login_page.dart';
import 'package:case_study_app/view/pages/main_page/main_page.dart';
import 'package:case_study_app/provider/authentication_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../const/app_colors.dart';
import '../../widgets/email_textfield.dart';
import '../../widgets/password_textfield.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confrimpasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confrimpasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Consumer<AuthenticationProvider>(
      builder: (context, authPro, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(),
          body: SizedBox(
            height: height,
            child: Form(
              key: _formKey,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Create an account,",
                              style: TextStyle(
                                color: AppColors.black,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Let’s help you set up your account, \nit won’t take long.",
                              style: TextStyle(
                                color: AppColors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: height * 0.6,
                        decoration: BoxDecoration(
                          color: AppColors.fillColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              EmailTextfield(
                                controller: emailController,
                                hintext: "Enter the Email ID ",
                              ),
                              SizedBox(height: 15),
                              PasswordTextfield(
                                hintext: "Password",
                                passwordController: passwordController,
                                confrimpasswordController:
                                    confrimpasswordController,
                              ),
                              SizedBox(height: 15),
                              PasswordTextfield(
                                hintext: "Confirm Password",
                                passwordController: confrimpasswordController,
                                confrimpasswordController:
                                    confrimpasswordController,
                              ),
                              SizedBox(height: 35),
                              ElevatedButton(
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    bool loggedin = await authPro
                                        .signupWithEmailAndPassword(
                                            email: emailController.text,
                                            password: passwordController.text);
                                    print(authPro.firebaseAuth.currentUser);
                                    if (loggedin) {
                                      Get.offAll(() => MainPage());
                                    }
                                  }
                                },
                                child: Center(
                                  child: Text(
                                    "SUGNUP",
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Alredy a Member? ",
                                    style: TextStyle(
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.offAll(
                                        () => LoginPage(),
                                        transition: Transition.cupertino,
                                      );
                                    },
                                    child: Text(
                                      " Log In",
                                      style: TextStyle(
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
