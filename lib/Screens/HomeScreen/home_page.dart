import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Screens/HomeScreen/appointment_today.dart';
import 'package:medical_app/Screens/HomeScreen/search_field.dart';
import 'package:medical_app/Screens/HomeScreen/top_doctors_list.dart';
import 'options.dart';

class HommePage extends StatelessWidget {
  const HommePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Hello Luke,',
                        style:
                            TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'How do you feel today?',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                ),
                CachedNetworkImage(
                  imageUrl:
                      "https://www.kevinashleyphotography.com/wp-content/uploads/2015/11/person.jpg",
                  fit: BoxFit.contain,
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                    radius: 30,
                    backgroundImage: imageProvider,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ],
            ),
            SizedBox(height: 25),
            SearchField(),
            SizedBox(height: 25),
            OptionsRow(),
            SizedBox(height: 17),
            AppointmentToady(),
            SizedBox(height: 10),
            TopDoctorsList(),
          ],
        ),
      )),
    );
  }
}
