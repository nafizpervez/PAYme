import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectableOption extends StatelessWidget {
  final String route;
  final String logoUrl;
  final String text;
  const SelectableOption({
    Key? key,
    required this.route,
    required this.logoUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(route, arguments: {
          'organization': text,
        });
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 50.0,
              height: 40.0,
              child: Image.network(logoUrl),
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
