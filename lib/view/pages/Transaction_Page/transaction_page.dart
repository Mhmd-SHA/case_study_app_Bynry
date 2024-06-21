import 'package:case_study_app/const/app_colors.dart';
import 'package:case_study_app/const/app_sizes.dart';
import 'package:case_study_app/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'components/transaction_page_appbar.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TransactionPageAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppSizes.HORIZONTAL_PADDING, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Transactions ",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ...transactions.map(
                        (transaction) {
                          return ListTile(
                            title: Text(transaction.title),
                            subtitle: Text(
                                "Transaction ID : ${transaction.transactionId}"),
                            leading: FlutterLogo(),
                            trailing: Text("\$${transaction.amount}"),
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
