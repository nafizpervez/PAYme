import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/bottom_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/pay_electric_bill_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// List<PostpaidBillItems> bpdbpostpaidfields = [
//   PostpaidBillItems(
//     'bill_period',
//     'Bill Period',
//     'customer_number',
//     'Customer Number',
//   ),
// ];

class PayPostpaidBPDB extends StatefulWidget {
  const PayPostpaidBPDB({Key? key}) : super(key: key);

  @override
  State<PayPostpaidBPDB> createState() => _PayPostpaidBPDBState();
}

class _PayPostpaidBPDBState extends State<PayPostpaidBPDB> {
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
          assetimage: 'assets/sample/bpdb_postpaid.png',
        ),

        // Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 5,
        //     vertical: 10,
        //   ),
        //   child: Column(
        //     children: bpdbpostpaidfields
        //         .map(
        //           (PostpaidBillItems e) => PayPostpaidElectricBill(
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
