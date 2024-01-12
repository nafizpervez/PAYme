import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppProcessingBar extends StatefulWidget {
  const AppProcessingBar({
    Key? key,
  }) : super(key: key);

  @override
  _AppProcessingBarState createState() => _AppProcessingBarState();
}

class _AppProcessingBarState extends State<AppProcessingBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green,
            Colors.white,
          ],
          end: AlignmentDirectional.centerEnd,
          begin: AlignmentDirectional.centerStart,
        ),
      ),
      // alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SizedBox(
              width: 100,
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  padding: const EdgeInsets.all(
                    10.0,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: SizedBox(
                width: 50,
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: adnLogo(),
            ),
          ),
        ],
      ),
    );
  }

  Widget adnLogo() =>
      SizedBox(width: 75, child: Image.asset('assets/adnlogo.png'));
}
