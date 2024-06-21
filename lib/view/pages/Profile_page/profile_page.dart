import 'package:case_study_app/const/app_colors.dart';
import 'package:case_study_app/provider/authentication_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:u_credit_card/u_credit_card.dart';

import '../../../utils/snackbar_helper.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, authPro, child) {
        return Scaffold(
          appBar: AppBar(
            // forceMaterialTransparency: true,
            backgroundColor: AppColors.primaryColor,
            title: Text(
              "Profile",
              style: TextStyle(color: AppColors.white),
            ),
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
                    IconlyBold.setting,
                    color: AppColors.white,
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              child: FlutterLogo(),
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Erina Matrin",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.smartphone_rounded,
                                      color: AppColors.green,
                                      size: 15,
                                    ),
                                    SizedBox(width: 5),
                                    Text("122 222 2226",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          // fontSize: 25,
                                          // fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.mail_rounded,
                                      color: AppColors.green,
                                      size: 15,
                                    ),
                                    SizedBox(width: 5),
                                    Text("erinamatrin@bynry.com",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          // fontSize: 25,
                                          // fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Center(
                          child: CreditCardUi(
                            cardHolderFullName: 'Erina Matrin',
                            cardNumber: '1234567812345678',
                            validThru: '10/24',
                            topLeftColor: AppColors.green,
                            bottomRightColor: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(
                          IconlyLight.profile,
                          size: 20,
                        ),
                        minLeadingWidth: 0,
                        title: Text("Personal"),
                        trailing: Icon(
                          IconlyLight.arrowRight2,
                          size: 20,
                        ),
                        tileColor: AppColors.fillColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(height: 7),
                      ListTile(
                        leading: Icon(
                          IconlyLight.discount,
                          size: 20,
                        ),
                        minLeadingWidth: 0,
                        title: Text("Offers & Rewards"),
                        trailing: Icon(
                          IconlyLight.arrowRight2,
                          size: 20,
                        ),
                        tileColor: AppColors.fillColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(height: 7),
                      ListTile(
                        leading: Icon(
                          IconlyLight.shieldDone,
                          size: 20,
                        ),
                        minLeadingWidth: 0,
                        title: Text("Privacy Policy"),
                        trailing: Icon(
                          IconlyLight.arrowRight2,
                          size: 20,
                        ),
                        tileColor: AppColors.fillColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(height: 7),
                      ListTile(
                        leading: Icon(
                          IconlyLight.dangerCircle,
                          size: 20,
                        ),
                        minLeadingWidth: 0,
                        title: Text("Help"),
                        trailing: Icon(
                          IconlyLight.arrowRight2,
                          size: 20,
                        ),
                        tileColor: AppColors.fillColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(height: 7),
                      ListTile(
                        onTap: () {
                          authPro.signout();
                          SnackbarHelper.showSuccessSnackBar(
                              title: "title", message: "message");
                          // SnackbarHelper.showFailureSnackBar(
                          // title: "title", message: "message");
                        },
                        leading: Icon(
                          IconlyLight.logout,
                          color: AppColors.red,
                          size: 20,
                        ),
                        minLeadingWidth: 0,
                        title: Text(
                          "Logout",
                          style: TextStyle(
                            color: AppColors.red,
                          ),
                        ),
                        trailing: Icon(
                          IconlyLight.arrowRight2,
                          size: 20,
                        ),
                        tileColor: AppColors.fillColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(height: 7),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
