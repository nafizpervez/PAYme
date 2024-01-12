import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/bottom_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../widgets/bill_sample_previewer.dart';
import '../../../../../../../widgets/pay_electric_bill_field_widget.dart';

// List<PrepaidBillItems> dpdcprepaidfields = [
//   PrepaidBillItems(
//     'account_no',
//     'Account No.',
//     'contact_number',
//     'Contact Number',
//   ),
// ];

class PayPrepaidDPDC extends StatefulWidget {
  const PayPrepaidDPDC({Key? key}) : super(key: key);

  @override
  State<PayPrepaidDPDC> createState() => _PayPrepaidDPDCState();
}

class _PayPrepaidDPDCState extends State<PayPrepaidDPDC> {
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
          assetimage: 'assets/sample/dpdc_prepaid.png',
        ),

        // Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 5,
        //     vertical: 10,
        //   ),
        //   child: Column(
        //     children: dpdcprepaidfields
        //         .map(
        //           (PrepaidBillItems e) => PayPrepaidElectricBillFields(
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
