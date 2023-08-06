import 'package:flutter/material.dart';

class DocRatings extends StatelessWidget {
  const DocRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Patients',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 3),
              Text(
                '100',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '|',
                style: TextStyle(fontSize: 40, color: Colors.grey.shade400),
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Experience',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    '7',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'yrs',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '|',
                style: TextStyle(fontSize: 40, color: Colors.grey.shade400),
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ratings',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '4.8',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
