import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_selectable_index_widget.dart';
import 'package:adn_pay/widgets/selectable_option_widget.dart';
import 'package:flutter/material.dart';

import 'pay_internet_bill_controller.dart';

class PayInternetBill extends StatefulWidget {
  const PayInternetBill({Key? key}) : super(key: key);

  @override
  State<PayInternetBill> createState() => _PayInternetBillState();
}

class _PayInternetBillState extends State<PayInternetBill> {
  @override
  Widget build(BuildContext context) {
    return ListSelectableIndex(
      route: Routes.INITIAL,
      title1: 'Pay Internet Bill',
      title2: 'Available Organizations',
      listitems: internetbilloptionitems
          .map(
            (InternetBillOptionItems item) => SelectableOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
      savedRoute: Routes.INTERNETSAVEDBILLS,
    );
  }
}
