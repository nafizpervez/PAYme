import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/widgets/selectable_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class ListSelectableIndex extends StatefulWidget {
  final String route;
  final String title1;
  final String savedRoute;
  final String title2;
  final List<SelectableOption> listitems;
  const ListSelectableIndex({
    Key? key,
    required this.route,
    required this.title1,
    required this.savedRoute,
    required this.title2,
    required this.listitems,
  }) : super(key: key);

  @override
  State<ListSelectableIndex> createState() => _ListSelectableIndexState();
}

class _ListSelectableIndexState extends State<ListSelectableIndex> {
  final ScrollController _scC = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppProcessingBar(),
        ),
        body: SingleChildScrollView(
          controller: _scC,
          child: Padding(
            padding: const EdgeInsets.all(
              10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.80,
                  child: Card(
                    child: Column(
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
                          flex: 2,
                          child: ListView.separated(
                            itemCount: widget.listitems.length,
                            itemBuilder: (context, index) =>
                                widget.listitems[index],
                            separatorBuilder: (context, index) =>
                                const Divider(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.history,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  label: const Text(
                    'Transection History',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(
                      widget.savedRoute,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    primary: Colors.green.shade500,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                  ),
                ),

                // Row(

                //   children: [
                //     Expanded(
                //       child: ElevatedButton.icon(
                // onPressed: () {
                //   Get.toNamed(
                //     widget.savedRoute,
                //   );
                // },
                //         icon: Icons,
                //         children: [
                //           Card(
                //             child: Row(
                //               children: [
                //                 Padding(
                //                   padding: const EdgeInsets.all(8.0),
                //                   child: Icon(
                //                     Icons.save_rounded,
                //                     size: 30,
                //                     color: Colors.red.shade900,
                //                   ),
                //                 ),
                //                 const Expanded(
                //                   child: Text(
                //                     'Previous Transection',
                //                     style: TextStyle(
                //                       fontSize: 16,
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                // GFAccordion(
                //   title: 'History',
                //   expandedIcon: const Icon(Icons.minimize),
                //   collapsedTitleBackgroundColor: Colors.green.shade200,
                //   expandedTitleBackgroundColor: Colors.green.shade100,
                //   contentBackgroundColor: Colors.green.shade100,
                //   contentChild:
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
