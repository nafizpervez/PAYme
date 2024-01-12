import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Navigation/app_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'local_widgets/top_buttons.dart';

class AdnPayPage extends StatefulWidget {
  const AdnPayPage({Key? key}) : super(key: key);

  @override
  _AdnPayPageState createState() => _AdnPayPageState();
}

class _AdnPayPageState extends State<AdnPayPage> {
  final ScrollController _scC = ScrollController(
    debugLabel: 'AdnPayPage_Scroll',
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        drawer: SideNav(),
        drawerEnableOpenDragGesture: true,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(),
        ),
        // bottomNavigationBar: CustomBottomBar(),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  TopButtonsGrid(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FabCircularMenu(
                alignment: Alignment.bottomRight,
                ringDiameter: MediaQuery.of(context).size.width * 1.15,
                ringWidth: 80.0,
                fabSize: 60.0,
                fabElevation: 8.0,
                ringColor: Colors.green.withOpacity(0.3),
                fabColor: Colors.green.shade400,
                animationDuration: const Duration(milliseconds: 500),
                animationCurve: Curves.easeInCirc,
                fabOpenIcon: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 35,
                ),
                fabCloseIcon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 35,
                ),
                children: <Widget>[
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      icon: const Icon(
                        Icons.home,
                        size: 40,
                        color: Colors.black54,
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.INITIAL);
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.PROFILE);
                    },
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: IconButton(
                        icon: const Icon(
                          Icons.person_pin_rounded,
                          size: 40,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          Get.toNamed(Routes.PROFILE);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      icon: const Icon(
                        Icons.airplane_ticket_outlined,
                        size: 40,
                        color: Colors.black54,
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.MORETICKETINDEX);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      icon: const Icon(
                        Icons.travel_explore,
                        size: 40,
                        color: Colors.black54,
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.MORETRAVELINDEX);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 40,
                        color: Colors.black54,
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.MORESHOPPINGINDEX);
                      },
                    ),
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
