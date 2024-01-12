import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class BottomProcessingBar extends StatefulWidget {
  final String route;
  const BottomProcessingBar({
    Key? key,
    required this.route,
  }) : super(key: key);

  @override
  _BottomProcessingBarState createState() => _BottomProcessingBarState();
}

class _BottomProcessingBarState extends State<BottomProcessingBar> {
  var swipeD = 0.0;
  var swipeO = 1.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          widget.route,
        );
      },
      onPanUpdate: (details) {
        setState(() {
          swipeD = (details.localPosition.dx);
          if ((swipeD / (MediaQuery.of(context).size.width - 30)) < 1) {
            swipeO = 1 - (swipeD / (MediaQuery.of(context).size.width - 30));
          }
        });
        if (details.localPosition.dx >
            (MediaQuery.of(context).size.width - 30)) {
          Get.toNamed(
            widget.route,
          );
        }
      },
      child: Container(
        width: double.infinity,
        height: 50,
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
        child: Stack(
          children: [
            Positioned.fill(
              left: swipeD,
              child: Container(
                // color: Colors.lightGreen.withOpacity(swipeO),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.green,
                    ],
                    end: AlignmentDirectional.centerEnd,
                    begin: AlignmentDirectional.centerStart,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Drag/Tap to Proceed',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
