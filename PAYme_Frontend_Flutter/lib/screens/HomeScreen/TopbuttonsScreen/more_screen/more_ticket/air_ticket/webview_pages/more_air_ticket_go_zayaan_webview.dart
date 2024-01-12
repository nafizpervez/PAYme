import 'dart:io';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AirTicketGoZayaanWebview extends StatefulWidget {
  AirTicketGoZayaanWebview({Key? key}) : super(key: key);

  @override
  State<AirTicketGoZayaanWebview> createState() =>
      _AirTicketGoZayaanWebviewState();
}

class _AirTicketGoZayaanWebviewState extends State<AirTicketGoZayaanWebview> {
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
                'https://www.gozayaan.com/?utm_term=gozayan&utm_campaign=Search_Flight_Dec%2721&utm_source=adwords&utm_medium=ppc&hsa_acc=8659916254&hsa_cam=15364840268&hsa_grp=132069554524&hsa_ad=565655284939&hsa_src=g&hsa_tgt=kwd-376105068362&hsa_kw=gozayan&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gclid=Cj0KCQiA6NOPBhCPARIsAHAy2zCMwsK_uMrastn3WfWQhpzX44y0hNXVOfbK4cCqZPVM-056YERgCnAaAlg1EALw_wcB',
          ),
        ),
      ),
    );
  }
}
