import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class TopButtonGrid extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final String route;
  const TopButtonGrid({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 2,
          ),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(
                route,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.greenAccent.withOpacity(
                      0.7,
                    ),
                    // Colors.white,
                    Colors.white,
                  ],
                  end: AlignmentDirectional.topCenter,
                  begin: AlignmentDirectional.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              alignment: Alignment.center,
              // height: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(icon),
                      iconSize: 50.0,
                      color: color,
                      onPressed: () {
                        Get.toNamed(
                          route,
                        );
                      },
                    ),
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
