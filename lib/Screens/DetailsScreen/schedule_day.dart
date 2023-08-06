import 'package:flutter/material.dart';

class ScheduleDay extends StatefulWidget {
  const ScheduleDay({super.key});

  @override
  State<ScheduleDay> createState() => _ScheduleDayState();
}

class _ScheduleDayState extends State<ScheduleDay> {
  List<String> scheduleDay = ['Mon', 'Tue', 'Wed', 'Thur', 'Fri'];
  List<int> scheduleDate = [7, 8, 9, 10, 11];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Select Schedule',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 110,
          child: ListView.builder(
              itemCount: scheduleDay.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: scheduleDate[index] == 7
                              ? Colors.blue
                              : Colors.grey.shade200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            scheduleDay[index],
                            style: const TextStyle(fontSize: 17),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            scheduleDate[index].toString(),
                            style: const TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  )),
        ),
      ],
    );
  }
}
