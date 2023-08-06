import 'package:flutter/material.dart';

class OptionsRow extends StatelessWidget {
  const OptionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(Icons.medical_services),
            ),
            SizedBox(height: 9),
            Text('Hospital'),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(Icons.medical_services),
            ),
            SizedBox(height: 9),
            Text('Medical'),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(Icons.medical_services),
            ),
            SizedBox(height: 9),
            Text('Recipe'),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(Icons.medical_services),
            ),
            SizedBox(height: 9),
            Text('Appointment'),
          ],
        ),
      ],
    );
  }
}
