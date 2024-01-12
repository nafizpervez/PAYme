import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/global/bill_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'pay_gas_bill_controller.dart';

class GasSavedBill extends StatefulWidget {
  GasSavedBill({Key? key}) : super(key: key);

  @override
  State<GasSavedBill> createState() => _GasSavedBillState();
}

class _GasSavedBillState extends State<GasSavedBill> {
  final GasBillController _gasBillController = Get.find<GasBillController>();
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
            title: 'Gas Bill Transection History',
            tabEntitites: _gasBillController.gasBillHistory
                .map(
                  (e) => [
                    e.organization.toString(),
                    e.customerCode.toString(),
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
