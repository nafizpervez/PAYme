import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_selectable_index_widget.dart';
import 'package:adn_pay/widgets/selectable_option_widget.dart';
import 'package:flutter/material.dart';

import 'pay_water_bill_controller.dart';

class PayWaterBill extends StatefulWidget {
  const PayWaterBill({Key? key}) : super(key: key);

  @override
  State<PayWaterBill> createState() => _PayWaterBillState();
}

class _PayWaterBillState extends State<PayWaterBill> {
  @override
  Widget build(BuildContext context) {
    return ListSelectableIndex(
      route: Routes.INITIAL,
      title1: 'Pay Water Bills',
      title2: 'Available Organizations',
      listitems: waterbilloptionitems
          .map(
            (WaterBillOptionItems item) => SelectableOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
      savedRoute: Routes.WATERSAVEDBILLS,
    );
  }
}
