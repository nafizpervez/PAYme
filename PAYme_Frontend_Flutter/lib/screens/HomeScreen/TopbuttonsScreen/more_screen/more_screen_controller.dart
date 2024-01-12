import 'package:adn_pay/routes/app_pages.dart';
import 'package:flutter/material.dart';

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

const List<GridItems> partnerServicesItems = <GridItems>[
  GridItems(
    icon: Icons.airplane_ticket_outlined,
    color: Colors.green,
    text: 'Ticket',
    route: Routes.MORETICKETINDEX,
  ),
  GridItems(
    icon: Icons.travel_explore,
    color: Colors.orangeAccent,
    text: 'Travel',
    route: Routes.MORETRAVELINDEX,
  ),
  GridItems(
    icon: Icons.insert_chart_outlined_rounded,
    color: Colors.blueAccent,
    text: 'Insurance',
    route: Routes.MOREINSURANCEINDEX,
  ),
  GridItems(
    icon: Icons.games,
    color: Colors.purpleAccent,
    text: 'Games',
    route: Routes.MOREGAMESINDEX,
  ),
  GridItems(
    icon: Icons.shopping_bag_outlined,
    color: Colors.brown,
    text: 'Shopping',
    route: Routes.MORESHOPPINGINDEX,
  ),
  GridItems(
    icon: Icons.health_and_safety_outlined,
    color: Colors.redAccent,
    text: 'Donation',
    route: Routes.MOREDONATIONINDEX,
  ),
  GridItems(
    icon: Icons.food_bank,
    color: Colors.teal,
    text: 'Food',
    route: Routes.MOREFOODINDEX,
  ),
  GridItems(
    icon: Icons.coronavirus_rounded,
    color: Colors.red,
    text: 'Corona Info',
    route: Routes.MORECORONAINDEX,
  ),
];
