import 'package:case_study_app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class PasswordTextfield extends StatefulWidget {
  PasswordTextfield({
    super.key,
    required this.passwordController,
    required this.hintext,
    required this.confrimpasswordController,
  });
  TextEditingController passwordController;
  TextEditingController confrimpasswordController;
  String hintext;
  bool ishown = false;

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      controller: widget.passwordController,
      obscureText: widget.ishown ? false : true,
      decoration: InputDecoration(
        suffixIcon: InkWell(
            onTap: () {
              setState(() {
                widget.ishown = !widget.ishown;
              });
            },
            child: Icon(
              widget.ishown ? IconlyBold.hide : IconlyBold.show,
            )),
        hintText: widget.hintext,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        filled: true,
        fillColor: AppColors.fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters long';
        }
        if (!widget.confrimpasswordController.text.isEmpty &&
            widget.passwordController.text !=
                widget.confrimpasswordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
    );
  }
}
