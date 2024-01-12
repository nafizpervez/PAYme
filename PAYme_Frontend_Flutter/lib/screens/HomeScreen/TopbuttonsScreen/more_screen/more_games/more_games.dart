import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import 'more_games_controller.dart';

class MoreGamesIndex extends StatefulWidget {
  const MoreGamesIndex({Key? key}) : super(key: key);

  @override
  State<MoreGamesIndex> createState() => _MoreGamesIndexState();
}

class _MoreGamesIndexState extends State<MoreGamesIndex> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORE,
      title1: 'Online Games',
      title2: 'Available Games',
      listitems: gameoptionitems
          .map(
            (GameOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
