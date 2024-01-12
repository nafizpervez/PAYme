import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideNavBarOption extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final String route;
  const SideNavBarOption({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: color,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: Text(text),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
      onTap: () {
        Get.toNamed(
          route,
        );
      },
    );
  }
}
