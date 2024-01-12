import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import 'more_food_controller.dart';

class MoreFoodIndex extends StatefulWidget {
  const MoreFoodIndex({Key? key}) : super(key: key);

  @override
  State<MoreFoodIndex> createState() => _MoreFoodIndexState();
}

class _MoreFoodIndexState extends State<MoreFoodIndex> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORE,
      title1: 'Order Food Online',
      title2: 'Available Games',
      listitems: foodoptionitems
          .map(
            (FoodOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
