import 'package:adn_pay/routes/app_pages.dart';
import 'package:flutter/material.dart';

class PayBillGridItems {
  final IconData icon;
  final Color color;
  final String text;
  final String route;
  const PayBillGridItems({
    required this.icon,
    required this.color,
    required this.text,
    required this.route,
  });
}

const List<PayBillGridItems> paybillGridItems = <PayBillGridItems>[
  PayBillGridItems(
    icon: Icons.electrical_services,
    color: Colors.teal,
    text: 'Electricity',
    route: Routes.PAYELECTRICBILL,
  ),
  PayBillGridItems(
    icon: Icons.kitchen,
    color: Colors.pinkAccent,
    text: 'Gas',
    route: Routes.PAYGASBILL,
  ),
  PayBillGridItems(
    icon: Icons.water_damage_outlined,
    color: Colors.blueAccent,
    text: 'Water',
    route: Routes.PAYWATERBILL,
  ),
  PayBillGridItems(
    icon: Icons.signal_wifi_4_bar,
    color: Colors.red,
    text: 'Internet',
    route: Routes.PAYINTERNETBILL,
  ),
  PayBillGridItems(
    icon: Icons.tv_sharp,
    color: Colors.black,
    text: 'TV',
    route: Routes.PAYTVBILL,
  ),
  PayBillGridItems(
    icon: Icons.cast_for_education,
    color: Colors.green,
    text: 'Education',
    route: Routes.PAYEDUCATIONBILL,
  ),
];
