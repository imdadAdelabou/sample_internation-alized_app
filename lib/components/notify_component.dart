import 'package:flutter/material.dart';

class NotifyComponent extends StatelessWidget {
  final String indicatif;
  final String content;
  final String date;
  const NotifyComponent({
    Key? key,
    required this.indicatif,
    required this.content,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: const Color(0xff666666),
                child: Text(
                  indicatif,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: maxWidth * .4,
                    height: 70,
                    child: Text(content),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      color: Color(0xffD5D5D5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
