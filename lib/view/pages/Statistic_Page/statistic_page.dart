import 'package:case_study_app/const/app_sizes.dart';
import 'package:case_study_app/view/pages/Statistic_Page/components/income_expense_card.dart';
import 'package:case_study_app/view/pages/Statistic_Page/components/statistic_overview.dart';
import 'package:flutter/material.dart';
import '../../../const/app_colors.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // forceMaterialTransparency: true,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Statistic",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.HORIZONTAL_PADDING),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IncomeExpenseCard(),
            SizedBox(height: 10),
            StatisticOverview(),
          ],
        ),
      ),
    );
  }
}
