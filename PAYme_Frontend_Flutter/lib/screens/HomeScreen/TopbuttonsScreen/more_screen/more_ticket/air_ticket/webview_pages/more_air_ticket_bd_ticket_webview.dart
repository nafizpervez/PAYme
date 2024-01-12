import 'dart:io';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AirTicketBdTicketsWebview extends StatefulWidget {
  AirTicketBdTicketsWebview({Key? key}) : super(key: key);

  @override
  State<AirTicketBdTicketsWebview> createState() =>
      _AirTicketBdTicketsWebviewState();
}

class _AirTicketBdTicketsWebviewState extends State<AirTicketBdTicketsWebview> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppProcessingBar(),
        ),
        body: const Card(
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://bdtickets.com/airlines',
          ),
        ),
      ),
    );
  }
}
