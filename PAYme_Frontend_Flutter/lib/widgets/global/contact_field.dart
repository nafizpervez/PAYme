import 'package:flutter/material.dart';

class ContactField extends StatelessWidget {
  final IconData icon;
  final String name;
  final String number;
  const ContactField({
    Key? key,
    required this.icon,
    required this.name,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(number),
            ],
          ),
        ],
      ),
    );
  }
}
