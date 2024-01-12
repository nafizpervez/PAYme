import 'package:adn_pay/routes/app_pages.dart';
import 'package:flutter/material.dart';

//top_button grid items
class GridItems {
  final IconData icon;
  final Color color;
  final String text;
  final String route;
  const GridItems({
    required this.icon,
    required this.color,
    required this.text,
    required this.route,
  });
}

const List<GridItems> gridItems = <GridItems>[
  GridItems(
    icon: Icons.electrical_services,
    color: Colors.teal,
    text: 'Electricity Bill',
    route: Routes.PAYELECTRICBILL,
  ),
  GridItems(
    icon: Icons.kitchen,
    color: Colors.pinkAccent,
    text: 'Gas Bill',
    route: Routes.PAYGASBILL,
  ),
  GridItems(
    icon: Icons.water_damage_outlined,
    color: Colors.blueAccent,
    text: 'Water Bill',
    route: Routes.PAYWATERBILL,
  ),
  GridItems(
    icon: Icons.network_check,
    color: Colors.green,
    text: 'Internet Bill',
    route: Routes.PAYINTERNETBILL,
  ),
  GridItems(
    icon: Icons.tv_sharp,
    color: Colors.black,
    text: 'TV Bill',
    route: Routes.PAYTVBILL,
  ),
  GridItems(
    icon: Icons.cast_for_education,
    color: Colors.green,
    text: 'Educational Bill',
    route: Routes.PAYEDUCATIONBILL,
  ),
  GridItems(
    icon: Icons.window,
    color: Colors.pinkAccent,
    text: 'More',
    route: Routes.MORE,
  ),
];

//suggesstion items

