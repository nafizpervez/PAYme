import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectableWebviewOption extends StatelessWidget {
  final String route;
  final String logoUrl;
  final String text;
  const SelectableWebviewOption({
    Key? key,
    required this.route,
    required this.logoUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          route,
        );
        final snackBar = SnackBar(
          content: Row(
            children: [
              Text('Redirected to ' + text + '...'),
            ],
          ),
          // action: SnackBarAction(
          //   label: 'Undo',
          //   onPressed: () {
          //     Get.toNamed(
          //       route,
          //     );
          //   },
          // ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
