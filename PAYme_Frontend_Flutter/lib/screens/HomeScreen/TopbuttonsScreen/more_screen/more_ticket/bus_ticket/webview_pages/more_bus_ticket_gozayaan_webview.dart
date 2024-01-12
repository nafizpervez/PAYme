import 'dart:io';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BusTicketGoZayaanWebview extends StatefulWidget {
  BusTicketGoZayaanWebview({Key? key}) : super(key: key);

  @override
  State<BusTicketGoZayaanWebview> createState() =>
      _BusTicketGoZayaanWebviewState();
}

class _BusTicketGoZayaanWebviewState extends State<BusTicketGoZayaanWebview> {
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
                'https://www.gozayaan.com/?search=bus&utm_term=buy%20bus%20ticket%20online%20bd&utm_campaign=Search_Tour%20%26%20Bus_Dec%2721&utm_source=adwords&utm_medium=ppc&hsa_acc=8659916254&hsa_cam=15495296127&hsa_grp=136071537332&hsa_ad=567740275355&hsa_src=g&hsa_tgt=aud-1457340385408%3Akwd-338711728479&hsa_kw=buy%20bus%20ticket%20online%20bd&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gclid=Cj0KCQiA0eOPBhCGARIsAFIwTs6E95HmKHu766NAKUafHbr6frdimtd4IHnoFWhSdACLcLYXvlliONYaAg4LEALw_wcB',
          ),
        ),
      ),
    );
  }
}
