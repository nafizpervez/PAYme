import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import 'more_shopping_controller.dart';

class MoreShoppingIndex extends StatefulWidget {
  const MoreShoppingIndex({Key? key}) : super(key: key);

  @override
  State<MoreShoppingIndex> createState() => _MoreShoppingIndexState();
}

class _MoreShoppingIndexState extends State<MoreShoppingIndex> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORE,
      title1: 'Online Shopping',
      title2: 'Available Providers',
      listitems: shoppingoptionitems
          .map(
            (ShoppingOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
