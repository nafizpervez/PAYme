import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/bottom_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/pay_electric_bill_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// List<PostpaidBillItems> descopostpaidfields = [
//   PostpaidBillItems(
//     'bill_period',
//     'Bill Period',
//     'account_number',
//     'Account Number',
//   ),
// ];

class PayPostpaidDESCO extends StatefulWidget {
  const PayPostpaidDESCO({Key? key}) : super(key: key);

  @override
  State<PayPostpaidDESCO> createState() => _PayPostpaidDESCOState();
}

class _PayPostpaidDESCOState extends State<PayPostpaidDESCO> {
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
        //   route: Routes.BILLCONFIRMATION,
        // ),
        body: PayElectricBill(
          assetimage: 'assets/sample/desco_postpaid.png',
        ),

        // Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 5,
        //     vertical: 10,
        //   ),
        //   child: Column(
        //     children: descopostpaidfields
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
