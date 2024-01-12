import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/list_webview_index_widget.dart';
import 'package:adn_pay/widgets/selectable_webview_widget.dart';
import 'package:flutter/material.dart';

import 'more_donation_controller.dart';

class MoreDonationIndex extends StatefulWidget {
  const MoreDonationIndex({Key? key}) : super(key: key);

  @override
  State<MoreDonationIndex> createState() => _MoreDonationIndexState();
}

class _MoreDonationIndexState extends State<MoreDonationIndex> {
  @override
  Widget build(BuildContext context) {
    return ListWebviewIndex(
      route: Routes.MORE,
      title1: 'Online Donation',
      title2: 'Available Organization',
      listitems: donationoptionitem
          .map(
            (DonationOptionItems item) => SelectableWebviewOption(
              route: item.route,
              logoUrl: item.logoUrl,
              text: item.text,
            ),
          )
          .toList(),
    );
  }
}
