import 'package:case_study_app/const/app_colors.dart';
import 'package:flutter/material.dart';

import 'statistic_chart.dart';

class StatisticOverview extends StatelessWidget {
  const StatisticOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Statistic Overview",
          style: TextStyle(
            fontSize: 18,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${DateTime.now().toString().substring(0, 10)} - ${DateTime.now().add(Duration(days: 7)).toString().substring(0, 10)}",
              style: TextStyle(
                // fontSize: 18,
                color: AppColors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButton(
                isDense: true,
                alignment: Alignment.center,
                items: [
                  DropdownMenuItem(
                      child: Text(
                    "Monthly",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                    ),
                  )),
                  // DropdownMenuItem(child: Text("Monthly")),
                  // DropdownMenuItem(child: Text("Monthly")),
                ],
                onChanged: (value) {},
              ),
            )
          ],
        ),
        SizedBox(height: 15),
        StatisticChart()
      ],
    );
  }
}
