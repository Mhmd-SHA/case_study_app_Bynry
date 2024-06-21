import 'package:case_study_app/models/payment_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceProvider extends ChangeNotifier {
  List<PaymentService> _services = [
    PaymentService(
      name: "Transfer",
      icon: FontAwesomeIcons.moneyBillTransfer,
    ),
    PaymentService(
      name: "Utility Bill",
      icon: FontAwesomeIcons.fileInvoice,
    ),
    PaymentService(
      name: "Top up",
      icon: FontAwesomeIcons.mobileButton,
    ),
    PaymentService(
      name: "Electricity",
      icon: FontAwesomeIcons.plugCircleBolt,
    ),
    PaymentService(
      name: "Gas",
      icon: FontAwesomeIcons.gasPump,
    ),
    PaymentService(
      name: "Insurance",
      icon: FontAwesomeIcons.handHoldingMedical,
    ),
    PaymentService(
      name: "Broadband",
      icon: FontAwesomeIcons.houseSignal,
    ),
    PaymentService(
      name: "Home Service",
      icon: FontAwesomeIcons.houseCrack,
    ),
    PaymentService(
      name: "Clothing",
      icon: FontAwesomeIcons.shirt,
    ),
    PaymentService(
      name: "Groceries",
      icon: FontAwesomeIcons.basketShopping,
    ),
    PaymentService(
      name: "Voucher",
      icon: FontAwesomeIcons.ticket,
    ),
    PaymentService(
      name: "More",
      icon: FontAwesomeIcons.layerGroup,
    ),
  ];
  List<PaymentService> get services => _services;
}
