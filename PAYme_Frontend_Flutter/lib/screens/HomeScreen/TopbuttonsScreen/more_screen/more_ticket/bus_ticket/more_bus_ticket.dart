import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import '../more_ticket_controller.dart';

class MoreBusTicket extends StatefulWidget {
  const MoreBusTicket({Key? key}) : super(key: key);

  @override
  State<MoreBusTicket> createState() => _MoreBusTicketState();
}

class _MoreBusTicketState extends State<MoreBusTicket> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORETICKETINDEX,
      title1: 'Bus Tickets',
      title2: 'Available Providers',
      listitems: busticketoptionitems
          .map(
            (BusTicketOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
