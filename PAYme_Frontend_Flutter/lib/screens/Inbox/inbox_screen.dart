import 'package:adn_pay/screens/Navigation/app_bar.dart';
import 'package:adn_pay/screens/Navigation/bottom_navigation.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'local_widgets/Inbox_index.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CustomAppBar(),
        ),
        // bottomNavigationBar: const CustomBottomBar(),
        body: const InboxIndex(),
      ),
    );
  }
}
