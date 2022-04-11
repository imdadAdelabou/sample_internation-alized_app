import 'package:flutter/material.dart';
import 'package:pet_zone/models/grid_content_model.dart';

class GridContent extends StatelessWidget {
  final GridContentModel gridContent;
  const GridContent({
    required this.gridContent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: Image.asset(gridContent.icon),
            ),
            const SizedBox(height: 8.0),
            Text(
              gridContent.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8.0),
            SizedBox(
              child: Text(
                gridContent.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
