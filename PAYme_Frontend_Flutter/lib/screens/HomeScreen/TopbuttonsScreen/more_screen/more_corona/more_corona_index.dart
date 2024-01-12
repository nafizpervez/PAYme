import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import 'more_corona_controller.dart';

class MoreCoronaIndex extends StatefulWidget {
  const MoreCoronaIndex({Key? key}) : super(key: key);

  @override
  State<MoreCoronaIndex> createState() => _MoreCoronaIndexState();
}

class _MoreCoronaIndexState extends State<MoreCoronaIndex> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORE,
      title1: 'Corona Informations',
      title2: 'Available Information Gateway',
      listitems: coronaoptionitems
          .map(
            (CoronaOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
