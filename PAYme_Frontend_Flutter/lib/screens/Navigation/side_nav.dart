import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:adn_pay/widgets/global/side_nav_bar_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'side_nav_controller.dart';

class SideNav extends StatefulWidget {
  SideNav({Key? key}) : super(key: key);

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  late final AuthController loginController;
  @override
  void initState() {
    super.initState();
    loginController = Get.find<AuthController>(
      tag: 'loginController',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
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
              child: Image.asset("assets/adnlogo.png"),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      loginController.user.name.toString(),
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'TID: ' + loginController.user.tid.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'MID: ' + loginController.user.mid.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Divider(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: sidenavoptionitems
                            .map(
                              (SideNavOptionItems e) => SideNavBarOption(
                                icon: e.icon,
                                color: e.color,
                                text: e.text,
                                route: e.route,
                              ),
                            )
                            .toList(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Obx(
                              () => loginController.loggingOut
                                  ? const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  : ElevatedButton.icon(
                                      onPressed: () {
                                        loginController.logout();
                                      },
                                      icon: const Icon(
                                          Icons.power_settings_new_outlined),
                                      label: const Text(
                                        'Logout',
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.green,
                                        padding: const EdgeInsets.all(8.0),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
