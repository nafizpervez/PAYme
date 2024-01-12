import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreTicketOption extends StatelessWidget {
  final String route;
  final IconData icon;
  final Color color;
  final String text;
  const MoreTicketOption({
    Key? key,
    required this.route,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          route,
        );
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              icon,
              size: 40,
              color: color,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
