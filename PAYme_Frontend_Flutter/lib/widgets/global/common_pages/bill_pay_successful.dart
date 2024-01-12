import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class BillPaySuccessful extends StatelessWidget {
  const BillPaySuccessful({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Bill Payment Successfull',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Center(
                  child: Icon(
                    Icons.done_all,
                    size: 50,
                    color: Colors.lightGreen,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Get.toNamed(
                      Routes.INITIAL,
                    );
                  },
                  label: const Text('Go Home'),
                  icon: const Icon(Icons.keyboard_arrow_left_rounded),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
