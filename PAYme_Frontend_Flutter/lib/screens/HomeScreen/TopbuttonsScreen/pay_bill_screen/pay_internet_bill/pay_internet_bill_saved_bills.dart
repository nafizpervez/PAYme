import 'package:adn_pay/screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_internet_bill/pay_internet_bill_controller.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/global/bill_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class InternetSavedBill extends StatefulWidget {
  InternetSavedBill({Key? key}) : super(key: key);

  @override
  State<InternetSavedBill> createState() => _InternetSavedBillState();
}

class _InternetSavedBillState extends State<InternetSavedBill> {
  final InternetBillController _internetBillController =
      Get.find<InternetBillController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppProcessingBar(),
        ),
        body: Obx(() {
          return BillHistory(
            title: 'Internet Bill Transection History',
            tabEntitites: _internetBillController.internetBillHistory
                .map(
                  (e) => [
                    e.organization.toString(),
                    e.accountNo.toString(),
                    e.billPeriod.toString(),
                    e.amount.toString(),
                  ],
                )
                .toList(),
          );
        }),
      ),
    );
  }
}
