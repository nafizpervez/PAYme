import 'package:adn_pay/widgets/top_button_grid_item.dart';
import 'package:flutter/material.dart';

import 'home_screen_controller.dart';

class TopButtonsGrid extends StatelessWidget {
  const TopButtonsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scC = ScrollController();
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: SingleChildScrollView(
        controller: _scC,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'ADN PAY SERVICES',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  itemCount: gridItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 1.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return TopButtonGrid(
                      icon: gridItems[index].icon,
                      color: gridItems[index].color,
                      text: gridItems[index].text,
                      route: gridItems[index].route,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
