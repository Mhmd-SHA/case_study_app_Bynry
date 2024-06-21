import 'package:case_study_app/const/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

AppBar homePageAppBar() => AppBar(
      // forceMaterialTransparency: true,
      backgroundColor: AppColors.primaryColor,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      title: Row(
        children: [
          CircleAvatar(
            radius: 20,
          ),
          SizedBox(width: 10),
          Text(
            "Hello Erina",
            style: TextStyle(color: AppColors.white),
          ),
        ],
      ),
      centerTitle: false,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 15),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.grey,
            ),
          ),
          child: IconButton(
            alignment: Alignment.center,
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {},
            icon: Icon(
              size: 20,
              IconlyBold.notification,
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
