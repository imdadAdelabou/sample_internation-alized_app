import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_zone/models/pet.dart';
import 'package:pet_zone/statics/constant.dart';

class ProfileHomeComponent extends StatelessWidget {
  final Pet pet;
  const ProfileHomeComponent({
    Key? key,
    required this.pet,
  }) : super(key: key);

  addZeroToFront(int number) {
    if (number >= 0 && number <= 9) {
      return "0$number";
    }
    return number;
  }

  formatDate() {
    final df = DateFormat(dateFormat);
    var result = df.format(DateTime.fromMicrosecondsSinceEpoch(
        pet.date.millisecondsSinceEpoch * 1000));

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: double.infinity,
          height: 110,
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        Positioned(
          top: -9,
          child: Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * .4,
          top: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pet.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                pet.subName,
              ),
              const SizedBox(height: 3.0),
              Text(formatDate().toString()),
            ],
          ),
        ),
      ],
    );
  }
}
