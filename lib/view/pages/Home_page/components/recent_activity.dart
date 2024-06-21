import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../const/app_colors.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Activity",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  // fontSize: 15,
                  color: AppColors.secondaryColor,
                  // fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ListTile(
                dense: true,
                leading: Icon(
                  Icons.local_activity,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  "Master card Added",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  DateFormat.yMMMEd().format(DateTime.now()),
                  style: TextStyle(
                    // fontSize: 15,
                    color: AppColors.grey,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: AppColors.green.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.done,
                      size: 20,
                    )),
              ),
              Divider(),
              ListTile(
                dense: true,
                leading: Icon(
                  Icons.local_activity,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  "Master card Added",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  DateFormat.yMMMEd().format(DateTime.now()),
                  style: TextStyle(
                    // fontSize: 15,
                    color: AppColors.grey,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: AppColors.green.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.done,
                      size: 20,
                    )),
              ),
              Divider(),
              ListTile(
                dense: true,
                leading: Icon(
                  Icons.local_activity,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  "Master card Added",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  DateFormat.yMMMEd().format(DateTime.now()),
                  style: TextStyle(
                    // fontSize: 15,
                    color: AppColors.grey,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: AppColors.green.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.done,
                      size: 20,
                    )),
              ),
              Divider(),
              ListTile(
                dense: true,
                leading: Icon(
                  Icons.local_activity,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  "Master card Added",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  DateFormat.yMMMEd().format(DateTime.now()),
                  style: TextStyle(
                    // fontSize: 15,
                    color: AppColors.grey,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: AppColors.green.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.done,
                      size: 20,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
