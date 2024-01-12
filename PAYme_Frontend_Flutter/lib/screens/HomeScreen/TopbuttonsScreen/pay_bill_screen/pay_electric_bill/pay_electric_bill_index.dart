import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_selectable_index_widget.dart';
import 'package:adn_pay/widgets/selectable_option_widget.dart';
import 'package:flutter/material.dart';
import 'pay_electric_bill_controller.dart';

class PayElectricBill extends StatefulWidget {
  const PayElectricBill({Key? key}) : super(key: key);

  @override
  State<PayElectricBill> createState() => _PayElectricBillState();
}

class _PayElectricBillState extends State<PayElectricBill> {
  final ScrollController _scc =
      ScrollController(debugLabel: 'scroll_controller');
  @override
  Widget build(BuildContext context) {
    return ListSelectableIndex(
      route: Routes.INITIAL,
      title1: 'Pay Electric Bills',
      title2: 'Available Organizations',
      listitems: electricbilloptionitems
          .map(
            (ElectricBillOptionItems item) => SelectableOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
      savedRoute: Routes.ELECTRICSAVEDBILLS,
    );
  }
}
