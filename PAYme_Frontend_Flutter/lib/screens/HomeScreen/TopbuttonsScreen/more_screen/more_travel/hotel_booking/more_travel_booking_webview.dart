import 'dart:io';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BookingHotelBooking extends StatefulWidget {
  BookingHotelBooking({Key? key}) : super(key: key);

  @override
  State<BookingHotelBooking> createState() => _BookingHotelBookingState();
}

class _BookingHotelBookingState extends State<BookingHotelBooking> {
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
                'https://www.booking.com/country/bd.en.html?aid=1610687;label=bd-dgjQezNW1JpT_PBZNy2okAS379678787678:pl:ta:p1:p2:ac:ap:neg:fi:tikwd-308590460304:lp9069450:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YfpWGnRw6lOGgfEoJVv7zYo;ws=&gclid=Cj0KCQiA0eOPBhCGARIsAFIwTs6KxXhX91kUJLHqwfIy-PLMfDto7Xi-D2t3b362wbKM4ViFR0xV_VYaAveUEALw_wcB',
          ),
        ),
      ),
    );
  }
}
