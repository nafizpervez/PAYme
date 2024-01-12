import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import '../more_ticket_controller.dart';

class MoreTrainTicket extends StatefulWidget {
  const MoreTrainTicket({Key? key}) : super(key: key);

  @override
  State<MoreTrainTicket> createState() => _MoreTrainTicketState();
}

class _MoreTrainTicketState extends State<MoreTrainTicket> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORETICKETINDEX,
      title1: 'Train Tickets',
      title2: 'Available Providers',
      listitems: trainticketoptionitems
          .map(
            (TrainTicketOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
