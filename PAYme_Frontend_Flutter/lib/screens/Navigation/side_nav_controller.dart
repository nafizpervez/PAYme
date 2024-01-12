import 'package:adn_pay/routes/app_pages.dart';
import 'package:flutter/material.dart';

class SideNavOptionItems {
  final IconData icon;
  final Color color;
  final String text;
  final String route;
  SideNavOptionItems(
    this.icon,
    this.color,
    this.text,
    this.route,
  );
}

List<SideNavOptionItems> sidenavoptionitems = [
  SideNavOptionItems(
    Icons.house,
    Colors.cyan,
    'Home',
    Routes.INITIAL,
  ),
  SideNavOptionItems(
    Icons.person_pin_rounded,
    Colors.blueAccent,
    'Profile',
    Routes.PROFILE,
  ),
  SideNavOptionItems(
    Icons.electrical_services,
    Colors.teal,
    'Electricity Bill',
    Routes.PAYELECTRICBILL,
  ),
  SideNavOptionItems(
    Icons.kitchen,
    Colors.pinkAccent,
    'Gas Bill',
    Routes.PAYGASBILL,
  ),
  SideNavOptionItems(
    Icons.water_damage_outlined,
    Colors.blueAccent,
    'Water Bill',
    Routes.PAYWATERBILL,
  ),
  SideNavOptionItems(
    Icons.signal_wifi_4_bar,
    Colors.red,
    'Internet Bill',
    Routes.PAYINTERNETBILL,
  ),
  SideNavOptionItems(
    Icons.cast_for_education,
    Colors.green,
    'Educational Bill',
    Routes.PAYEDUCATIONBILL,
  ),
  SideNavOptionItems(
    Icons.airplane_ticket_outlined,
    Colors.greenAccent,
    'Ticket',
    Routes.MORETICKETINDEX,
  ),
  SideNavOptionItems(
    Icons.travel_explore,
    Colors.orangeAccent,
    'Travel',
    Routes.MORETRAVELINDEX,
  ),
  SideNavOptionItems(
    Icons.shopping_bag_outlined,
    Colors.brown,
    'Shopping',
    Routes.MORESHOPPINGINDEX,
  ),
  SideNavOptionItems(
    Icons.window,
    Colors.red,
    'More Features',
    Routes.MORE,
  ),
];
