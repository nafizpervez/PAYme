import 'package:adn_pay/widgets/pay_bill_widget.dart';
import 'package:flutter/material.dart';

import 'more_screen_controller.dart';

class MoreIndex extends StatefulWidget {
  const MoreIndex({Key? key}) : super(key: key);

  @override
  _MoreIndexState createState() => _MoreIndexState();
}

class _MoreIndexState extends State<MoreIndex> {
  final ScrollController _mC = ScrollController(debugLabel: 'More_Scroll');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        controller: _mC,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: const Color.fromARGB(237, 247, 247, 247),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Text(
                      'ADN PAY Services with Partner',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.77,
                      child: GridView.builder(
                        itemCount: partnerServicesItems.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 1.0,
                                mainAxisSpacing: 1.0),
                        itemBuilder: (BuildContext context, int index) {
                          return PayBillItem(
                            icon: partnerServicesItems[index].icon,
                            color: partnerServicesItems[index].color,
                            text: partnerServicesItems[index].text,
                            route: partnerServicesItems[index].route,
                          );
                        },
                      ),
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
