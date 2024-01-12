import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_selectable_index_widget.dart';
import 'package:adn_pay/widgets/selectable_option_widget.dart';
import 'package:flutter/material.dart';

import 'pay_education_bill_controller.dart';

class PayEducationBill extends StatefulWidget {
  const PayEducationBill({Key? key}) : super(key: key);

  @override
  State<PayEducationBill> createState() => _PayEducationBillState();
}

class _PayEducationBillState extends State<PayEducationBill> {
  @override
  Widget build(BuildContext context) {
    return ListSelectableIndex(
      route: Routes.INITIAL,
      title1: 'Pay Education Bills',
      title2: 'Available Organizations',
      listitems: educationbilloptionitems
          .map(
            (EducationBillOptionItems item) => SelectableOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
      savedRoute: Routes.EDUCATIONSAVEDBILLS,
    );
  }
}
