import 'package:flutter/material.dart';

import '../../../../const/app_colors.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Balance",
            style: TextStyle(
              fontSize: 15,
              color: AppColors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                "\$ 1531.04",
                style: TextStyle(
                  fontSize: 25,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 15),
              Text(
                "+ Add Money",
                style: TextStyle(
                  color: AppColors.secondaryColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
