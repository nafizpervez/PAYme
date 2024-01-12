import 'package:flutter/material.dart';

class ProPicReplacementText extends StatelessWidget {
  final String name;
  final double dimension;
  const ProPicReplacementText({
    Key? key,
    required this.name,
    required this.dimension,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Colors.black45),
        borderRadius: BorderRadius.all(
          Radius.circular(dimension),
        ),
      ),
      padding: const EdgeInsets.all(5.0),
      child: SizedBox.square(
        dimension: dimension,
        child: Center(
          child: Text(
            getInitials(name),
            style: TextStyle(
              color: Colors.black,
              fontSize: dimension * 0.70,
            ),
          ),
        ),
      ),
    );
  }

  String getInitials(String name) {
    final _k = name.replaceAll('Md. ', '').split(' ');
    if (_k.length > 1) {
      return (_k[0][0] + _k[1][0]).replaceAll(' ', '');
    } else {
      return (_k[0][0] + _k[0][1]).replaceAll(' ', '');
    }
  }
}
