import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/global/bill_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'pay_tv_bill_controller.dart';

class TvSavedBill extends StatefulWidget {
  TvSavedBill({Key? key}) : super(key: key);

  @override
  State<TvSavedBill> createState() => _TvSavedBillState();
}

class _TvSavedBillState extends State<TvSavedBill> {
  final TVBillController _tvBillController = Get.find<TVBillController>();

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
            title: 'TV Bill Transection History',
            tabEntitites: _tvBillController.tvBillHistory
                .map(
                  (e) => [
                    e.organization.toString(),
                    e.customerId.toString(),
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
