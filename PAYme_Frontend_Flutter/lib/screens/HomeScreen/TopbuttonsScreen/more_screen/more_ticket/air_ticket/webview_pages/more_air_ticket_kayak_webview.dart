import 'dart:io';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AirTicketKayakWebview extends StatefulWidget {
  AirTicketKayakWebview({Key? key}) : super(key: key);

  @override
  State<AirTicketKayakWebview> createState() => _AirTicketKayakWebviewState();
}

class _AirTicketKayakWebviewState extends State<AirTicketKayakWebview> {
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
            initialUrl:
                'https://www.kayak.com/horizon/sem/flights/general?lang=en&skipapp=true&gclid=Cj0KCQiA0eOPBhCGARIsAFIwTs5TAhR0Xw95N-cZhp4P4ZWdqdiWkzl6CIw7HKD-5FTs2bf9cAN5hM8aAn_cEALw_wcB&aid=71208347275',
          ),
        ),
      ),
    );
  }
}
