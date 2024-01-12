import 'dart:io';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KayakHotelBooking extends StatefulWidget {
  KayakHotelBooking({Key? key}) : super(key: key);

  @override
  State<KayakHotelBooking> createState() => _KayakHotelBookingState();
}

class _KayakHotelBookingState extends State<KayakHotelBooking> {
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
                'https://www.kayak.com/Dhaka-Hotels.28030.hotel.ksp?r9ck=iq&gclid=Cj0KCQiA0eOPBhCGARIsAFIwTs45UGXKFJ4xcmr4USqZS9JUi4XpUB3xa5l8Ae1fuQKJbmBSVhqr4T4aAoiQEALw_wcB',
          ),
        ),
      ),
    );
  }
}
