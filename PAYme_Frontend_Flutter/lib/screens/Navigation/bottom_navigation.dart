import 'package:adn_pay/routes/app_pages.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return

        // FabCircularMenu(children: <Widget>[
        //   IconButton(
        //       icon: Icon(Icons.home),
        //       onPressed: () {
        //         print('Home');
        //       }),
        //   IconButton(
        //       icon: Icon(Icons.favorite),
        //       onPressed: () {
        //         print('Favorite');
        //       })
        // ]);

        SizedBox(
      child: Text('data'),
    );
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(vertical: 5),
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: GestureDetector(
    //             onTap: () {
    //               Get.toNamed(
    //                 Routes.INITIAL,
    //               );
    //             },
    //             child: Column(
    //               children: const [
    //                 Icon(
    //                   Icons.home,
    //                   size: 40,
    //                   color: Colors.black87,
    //                 ),
    //                 Text(
    //                   'Home',
    //                   style: TextStyle(fontSize: 12, color: Colors.black87),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //         // Expanded(
    //         //   child: GestureDetector(
    //         //     onTap: () {
    //         //       Get.toNamed(
    //         //         Routes.QRSCANNER,
    //         //       );
    //         //     },
    //         //     child: Column(
    //         //       children: const [
    //         //         Icon(
    //         //           Icons.qr_code_2,
    //         //           size: 40,
    //         //           color: Colors.black87,
    //         //         ),
    //         //         Text(
    //         //           'QR',
    //         //           style: TextStyle(fontSize: 12, color: Colors.black87),
    //         //         )
    //         //       ],
    //         //     ),
    //         //   ),
    //         // ),
    //         Expanded(
    //           child: GestureDetector(
    //             onTap: () {
    //               Get.toNamed(
    //                 Routes.INBOX,
    //               );
    //             },
    //             child: Column(
    //               children: const [
    //                 Icon(
    //                   Icons.email_outlined,
    //                   size: 40,
    //                   color: Colors.black87,
    //                 ),
    //                 Text(
    //                   'Inbox',
    //                   style: TextStyle(fontSize: 12, color: Colors.black87),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
