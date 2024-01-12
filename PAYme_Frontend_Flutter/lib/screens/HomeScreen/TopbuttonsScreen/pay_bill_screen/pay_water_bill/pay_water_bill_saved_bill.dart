import 'package:adn_pay/screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_water_bill/pay_water_bill_controller.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/global/bill_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WaterSavedBill extends StatefulWidget {
  WaterSavedBill({Key? key}) : super(key: key);

  @override
  State<WaterSavedBill> createState() => _WaterSavedBillState();
}

class _WaterSavedBillState extends State<WaterSavedBill> {
  final WaterBillController _waterBillController =
      Get.find<WaterBillController>();

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
            title: 'Water Bill Transection History',
            tabEntitites: _waterBillController.waterBillHistory
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
