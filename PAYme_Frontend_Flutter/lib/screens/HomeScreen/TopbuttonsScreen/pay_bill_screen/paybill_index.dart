import 'package:adn_pay/widgets/pay_bill_widget.dart';
import 'package:flutter/material.dart';

import 'pay_bill_screen_controller.dart';

class PayBillIndex extends StatefulWidget {
  const PayBillIndex({Key? key}) : super(key: key);

  @override
  _PayBillIndexState createState() => _PayBillIndexState();
}

class _PayBillIndexState extends State<PayBillIndex> {
  final ScrollController _pbC = ScrollController(debugLabel: 'PayBill_Scroll');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: _pbC,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                child: Text(
                  'Pay Bill',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 15,
                ),
                child: Text('Organizations'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 180.0,
                    child: GridView.builder(
                      itemCount: paybillGridItems.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 2.0,
                              mainAxisSpacing: 1.0),
                      itemBuilder: (BuildContext context, int index) {
                        return PayBillItem(
                          icon: paybillGridItems[index].icon,
                          color: paybillGridItems[index].color,
                          text: paybillGridItems[index].text,
                          route: paybillGridItems[index].route,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
