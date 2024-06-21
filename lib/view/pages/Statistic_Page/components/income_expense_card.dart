import 'package:case_study_app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class IncomeExpenseCard extends StatelessWidget {
  const IncomeExpenseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.green.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                IconlyBold.upload,
                color: AppColors.green,
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    "\$5,350",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Income",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.red.withOpacity(0.4),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                IconlyBold.download,
                color: AppColors.red,
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    "\$5,350",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Expenses",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
