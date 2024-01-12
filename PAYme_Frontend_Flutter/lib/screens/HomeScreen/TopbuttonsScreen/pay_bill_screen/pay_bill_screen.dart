import 'package:adn_pay/screens/Navigation/app_bar.dart';
import 'package:adn_pay/screens/Navigation/bottom_navigation.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';

import 'paybill_index.dart';

class PayBillScreen extends StatefulWidget {
  PayBillScreen({Key? key}) : super(key: key);

  @override
  _PayBillScreenState createState() => _PayBillScreenState();
}

class _PayBillScreenState extends State<PayBillScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CustomAppBar(),
        ),
        body: const PayBillIndex(),
      ),
    );
  }
}
