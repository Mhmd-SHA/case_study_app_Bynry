import 'package:flutter/material.dart';

import '../../../../const/app_colors.dart';

AppBar TransactionPageAppBar() => AppBar(
      // forceMaterialTransparency: true,
      backgroundColor: AppColors.primaryColor,
      title: Text(
        "Transactions",
        style: TextStyle(color: AppColors.white),
      ),
    );
