import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/propic_replacement.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Login_auth/login_controller.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
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
    return Container(
      width: double.infinity,
      height: 70,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Get.toNamed(
                  Routes.PROFILE,
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: userLogo(),
              ),
            ),
          ),
          const SizedBox(
            width: 180,
          ),
          Expanded(
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

  Widget userLogo() =>

      // CircleAvatar(
      //       radius: 20.0,
      //       backgroundColor: Colors.transparent,
      //       child: ClipOval(
      //         child: Image.network(
      //           'https://thumbs.dreamstime.com/b/businessman-icon-vector-male-avatar-profile-image-profile-businessman-icon-vector-male-avatar-profile-image-182095609.jpg',
      //         ),
      //       ),
      //     );
      CircleAvatar(
        backgroundColor: Colors.white38,
        radius: 25.0,
        child: ClipOval(
          child: ProPicReplacementText(
            name: loginController.user.name,
            dimension: 30.0,
          ),
        ),
      );
  // CircleAvatar(
  //   radius: 20,
  //   backgroundColor: Colors.green.shade50,
  //   child: const Icon(
  //     Icons.person,
  //     color: Colors.black87,
  //     size: 28,
  //   ),
  // );

  Widget adnLogo() => SizedBox(
        height: 65,
        child: Image.asset(
          'assets/adnlogo.png',
        ),
      );
}
