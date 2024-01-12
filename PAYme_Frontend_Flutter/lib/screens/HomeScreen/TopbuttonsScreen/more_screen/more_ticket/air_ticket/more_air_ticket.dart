import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import '../more_ticket_controller.dart';

class MoreAirTicket extends StatefulWidget {
  const MoreAirTicket({Key? key}) : super(key: key);

  @override
  State<MoreAirTicket> createState() => _MoreAirTicketState();
}

class _MoreAirTicketState extends State<MoreAirTicket> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORETICKETINDEX,
      title1: 'Air Tickets',
      title2: 'Available Providers',
      listitems: airticketoptionitems
          .map(
            (AirTicketOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
