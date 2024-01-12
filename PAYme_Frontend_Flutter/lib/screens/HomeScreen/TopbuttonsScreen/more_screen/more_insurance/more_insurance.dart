import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import 'mroe_insurance_controller.dart';

class MoreInsuranceIndex extends StatefulWidget {
  const MoreInsuranceIndex({Key? key}) : super(key: key);

  @override
  State<MoreInsuranceIndex> createState() => _MoreInsuranceIndexState();
}

class _MoreInsuranceIndexState extends State<MoreInsuranceIndex> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORE,
      title1: 'Insurance Services',
      title2: 'Available Providers',
      listitems: insuranceoptionitems
          .map(
            (InsuranceOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
