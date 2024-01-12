import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/more_ticket_option_widget.dart';
import 'package:flutter/material.dart';

import 'more_ticket_controller.dart';

class MoreTicketIndex extends StatefulWidget {
  const MoreTicketIndex({Key? key}) : super(key: key);

  @override
  State<MoreTicketIndex> createState() => _MoreTicketIndexState();
}

class _MoreTicketIndexState extends State<MoreTicketIndex> {
  final ScrollController _sTT =
      ScrollController(debugLabel: 'Ticket_scroll_controller');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppProcessingBar(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Available Services',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    flex: 2,
                    child: ListView.separated(
                      itemCount: moreticketoptionitems.length,
                      itemBuilder: (context, index) => MoreTicketOption(
                        route: moreticketoptionitems[index].route,
                        icon: moreticketoptionitems[index].icon,
                        color: moreticketoptionitems[index].color,
                        text: moreticketoptionitems[index].text,
                      ),
                      separatorBuilder: (context, index) => const Divider(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
