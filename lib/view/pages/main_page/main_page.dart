import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:case_study_app/const/app_colors.dart';
import 'package:case_study_app/view/pages/Profile_page/profile_page.dart';
import 'package:case_study_app/provider/authentication_provider.dart';
import 'package:case_study_app/utils/snackbar_helper.dart';
import 'package:case_study_app/view/pages/Statistic_Page/statistic_page.dart';
import 'package:case_study_app/view/pages/Transaction_Page/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import '../Home_page/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List screens = const [
    HomePage(),
    StatisticPage(),
    TransactionPage(),
    ProfilePage(),
  ];
  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, authPro, child) {
        return Scaffold(
          body: screens[selectedIndex],
          bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: [
              selectedIndex == 0 ? Icons.speed_rounded : Icons.speed_rounded,
              selectedIndex == 1 ? IconlyLight.chart : IconlyLight.chart,
              selectedIndex == 2
                  ? Icons.data_usage_rounded
                  : Icons.data_usage_rounded,
              selectedIndex == 3 ? IconlyLight.profile : IconlyLight.profile,
            ],
            // iconSize: 30,
            activeColor: AppColors.secondaryColor,
            inactiveColor: AppColors.grey,
            backgroundColor: AppColors.primaryColor.withOpacity(0.1),

            // notchMargin: 5,
            elevation: 0,
            gapWidth: 10,
            blurEffect: true,
            leftCornerRadius: 10,
            rightCornerRadius: 10,
            gapLocation: GapLocation.none,
            activeIndex: selectedIndex,
            splashRadius: 0,
            onTap: (value) => changeIndex(value),
          ),
          // backgroundColor: Colors.white,
        );
      },
    );
  }
}
