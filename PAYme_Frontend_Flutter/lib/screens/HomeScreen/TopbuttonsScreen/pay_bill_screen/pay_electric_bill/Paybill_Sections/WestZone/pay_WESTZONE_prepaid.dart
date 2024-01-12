import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/bottom_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../widgets/bill_sample_previewer.dart';
import '../../../../../../../widgets/pay_electric_bill_field_widget.dart';

// List<PrepaidBillItems> westzoneprepaidfields = [
//   PrepaidBillItems(
//     'meter_no',
//     'Meter No.',
//     'contact_number',
//     'Contact Number',
//   ),
// ];

class PayPrepaidWESTZONE extends StatefulWidget {
  const PayPrepaidWESTZONE({Key? key}) : super(key: key);

  @override
  State<PayPrepaidWESTZONE> createState() => _PayPrepaidWESTZONEState();
}

class _PayPrepaidWESTZONEState extends State<PayPrepaidWESTZONE> {
  late final AuthController loginController;
  @override
  void initState() {
    super.initState();
    loginController = Get.find<AuthController>(
      tag: 'loginController',
    );
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
        // bottomNavigationBar: const BottomProcessingBar(
        //   route: Routes.ENTERAMOUNT,
        // ),
        body: PayElectricBill(
          assetimage: 'assets/sample/no_preview_sample.png',
        ),

        // Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 5,
        //     vertical: 10,
        //   ),
        //   child: Column(
        //     children: westzoneprepaidfields
        //         .map(
        // (PrepaidBillItems e) => PayPrepaidElectricBillFields(
        //             fieldname1: e.fieldname1,
        //             fieldtext1: e.fieldtext1,
        //             fieldname2: e.fieldname2,
        //             fieldtext2: e.fieldtext2,
        //           ),
        //         )
        //         .toList(),
        //   ),
        // ),
      ),
    );
  }
}
