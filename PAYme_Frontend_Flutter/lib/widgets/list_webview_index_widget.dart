import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

class ListWebviewIndex extends StatefulWidget {
  final String route;
  final String title1;
  final String title2;
  final List<SelectableWebviewOption> listitems;
  const ListWebviewIndex(
      {Key? key,
      required this.route,
      required this.title1,
      required this.title2,
      required this.listitems})
      : super(key: key);

  @override
  State<ListWebviewIndex> createState() => _ListWebviewIndexState();
}

class _ListWebviewIndexState extends State<ListWebviewIndex> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppProcessingBar(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    widget.title2,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const Divider(),
                Expanded(
                  child: ListView.separated(
                    itemCount: widget.listitems.length,
                    itemBuilder: (context, index) => widget.listitems[index],
                    separatorBuilder: (context, index) => const Divider(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
