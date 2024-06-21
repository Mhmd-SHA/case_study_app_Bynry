import 'package:case_study_app/const/app_colors.dart';
import 'package:flutter/material.dart';

class EmailTextfield extends StatelessWidget {
  EmailTextfield({super.key, required this.controller, required this.hintext});
  TextEditingController controller;
  String hintext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.fillColor,
        hintText: hintext,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your email';
        }
        if (!value.contains(RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"))) {
          return "Enter Valid Email";
        }
        return null;
      },
    );
  }
}
