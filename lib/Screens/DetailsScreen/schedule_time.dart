import 'package:flutter/material.dart';

class ScheduleTime extends StatelessWidget {
  static List<String> scheduleTime = [
    "8:00 AM",
    "9:00 AM",
    "10:00 AM",
    "11:00 AM",
    "12:00 PM"
  ];
  const ScheduleTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Morning',
            style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 40,
        child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 5,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: scheduleTime[index] == "9:00 AM"
                          ? Colors.blue
                          : Colors.grey.shade100,
                    ),
                    child: Text(
                      scheduleTime[index],
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                )),
      ),
      const SizedBox(height: 30)
    ]);
  }
}
