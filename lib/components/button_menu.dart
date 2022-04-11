import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonMenu extends StatelessWidget {
  final String content;
  final Function() action;
  const ButtonMenu({
    Key? key,
    required this.content,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: const TextStyle(
              color: Color(0xff7B7B7B),
              fontSize: 16,
            ),
          ),
          InkWell(
            onTap: action,
            child: const Icon(
              FontAwesomeIcons.arrowRight,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
