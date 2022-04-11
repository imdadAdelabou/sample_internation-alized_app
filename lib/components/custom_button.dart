import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget content;
  final Function() action;
  final Color backgroundColor;
  const CustomButton({
    Key? key,
    required this.content,
    required this.action,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: action,
        child: content,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
