import 'package:case_study_app/const/app_sizes.dart';
import 'package:case_study_app/view/pages/Home_page/components/home_page_appbar.dart';
import 'package:case_study_app/view/pages/Home_page/components/recent_activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../const/app_colors.dart';
import 'components/available_services.dart';
import 'components/balance_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homePageAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppSizes.HORIZONTAL_PADDING),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BalanceCard(),
              AvailableServices(),
              RecentActivity(),
            ],
          ),
        ),
      ),
    );
  }
}
