import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_selectable_index_widget.dart';
import 'package:adn_pay/widgets/selectable_option_widget.dart';
import 'package:flutter/material.dart';

import 'pay_gas_bill_controller.dart';

class PayGasBill extends StatefulWidget {
  const PayGasBill({Key? key}) : super(key: key);

  @override
  State<PayGasBill> createState() => _PayGasBillState();
}

class _PayGasBillState extends State<PayGasBill> {
  @override
  Widget build(BuildContext context) {
    return ListSelectableIndex(
      route: Routes.INITIAL,
      title1: 'Pay Gas Bills',
      title2: 'Available Organizations',
      listitems: gasbilloptionitems
          .map(
            (GasBillOptionItems item) => SelectableOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
      savedRoute: Routes.GASSAVEDBILLS,
    );
  }
}
