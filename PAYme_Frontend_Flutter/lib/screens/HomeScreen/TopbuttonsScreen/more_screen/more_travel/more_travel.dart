import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import 'more_travel_controller.dart';

class MoreTravelIndex extends StatefulWidget {
  const MoreTravelIndex({Key? key}) : super(key: key);

  @override
  State<MoreTravelIndex> createState() => _MoreTravelIndexState();
}

class _MoreTravelIndexState extends State<MoreTravelIndex> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORE,
      title1: 'Hotel Booking',
      title2: 'Available Providers',
      listitems: traveloptionitems
          .map(
            (TravelOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
