import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_selectable_index_widget.dart';
import 'package:adn_pay/widgets/selectable_option_widget.dart';
import 'package:flutter/material.dart';

import 'pay_tv_bill_controller.dart';

class PayTVBill extends StatefulWidget {
  const PayTVBill({Key? key}) : super(key: key);

  @override
  State<PayTVBill> createState() => _PayTVBillState();
}

class _PayTVBillState extends State<PayTVBill> {
  @override
  Widget build(BuildContext context) {
    return ListSelectableIndex(
      route: Routes.INITIAL,
      title1: 'Pay TV Bills',
      title2: 'Available Organizations',
      listitems: tvbilloptionitems
          .map(
            (TvBillOptionItems item) => SelectableOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
      savedRoute: Routes.TVSAVEDBILLS,
    );
  }
}
