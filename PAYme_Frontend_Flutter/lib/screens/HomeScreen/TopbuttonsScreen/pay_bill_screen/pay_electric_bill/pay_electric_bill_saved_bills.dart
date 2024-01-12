import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/global/bill_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'pay_electric_bill_controller.dart';

class ElectricSavedBills extends StatefulWidget {
  ElectricSavedBills({Key? key}) : super(key: key);

  @override
  State<ElectricSavedBills> createState() => _ElectricSavedBillsState();
}

class _ElectricSavedBillsState extends State<ElectricSavedBills> {
  final ElectricBillController _electricBillController =
      Get.find<ElectricBillController>();
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
            title: 'Electricity Bill Transection History',
            tabEntitites: _electricBillController.electricBillHistory
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
