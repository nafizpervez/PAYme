import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import '../more_ticket_controller.dart';

class MoreLaunchTicket extends StatefulWidget {
  const MoreLaunchTicket({Key? key}) : super(key: key);

  @override
  State<MoreLaunchTicket> createState() => _MoreLaunchTicketState();
}

class _MoreLaunchTicketState extends State<MoreLaunchTicket> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORETICKETINDEX,
      title1: 'Launch Tickets',
      title2: 'Available Providers',
      listitems: launchticketoptionitem
          .map(
            (LaunchTicketOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
