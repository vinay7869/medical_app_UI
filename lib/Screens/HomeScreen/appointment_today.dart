import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Screens/HomeScreen/doc_info_model.dart';

class AppointmentToady extends StatefulWidget {
  const AppointmentToady({super.key});

  @override
  State<AppointmentToady> createState() => _AppointmentToadyState();
}

class _AppointmentToadyState extends State<AppointmentToady> {
  List<DocInfoModel> docData = [
    DocInfoModel(
        name: 'dr.Indu Ambulkar',
        speciality: 'Medical Oncologist',
        url: "https://tru-d.com/wp-content/uploads/2016/08/Doctor-2.jpg")
  ];

  final color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Appointment Today',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: () {}, child: const Text('See All'))
          ],
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
          color: Colors.blue,
          elevation: 20,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 17),
                    child: CachedNetworkImage(
                      imageUrl: docData[0].url!,
                      imageBuilder: (context, imageProvider) => CircleAvatar(
                        radius: 30,
                        backgroundImage: imageProvider,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15, top: 17),
                    child: CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.message_sharp),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      docData[0].name!,
                      style: TextStyle(fontSize: 20, color: color),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, top: 20),
                    child: Text(
                      '10:30 AM',
                      style: TextStyle(fontSize: 20, color: color),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 10, bottom: 17),
                    child: Text(
                      docData[0].speciality!,
                      style:
                          TextStyle(color: Colors.grey.shade100, fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15, top: 10, bottom: 17),
                    child: Text(
                      '20/10/2020',
                      style:
                          TextStyle(color: Colors.grey.shade100, fontSize: 13),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
