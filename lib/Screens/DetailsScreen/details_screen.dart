import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Screens/DetailsScreen/doc_about.dart';
import 'package:medical_app/Screens/DetailsScreen/doc_rating.dart';
import 'package:medical_app/Screens/DetailsScreen/schedule_day.dart';
import 'package:medical_app/Screens/DetailsScreen/schedule_time.dart';

class DetailsScreen extends StatefulWidget {
  final String name;
  final String specialist;
  final double rating;
  final String url;
  const DetailsScreen(
      {super.key,
      required this.name,
      required this.specialist,
      required this.rating,
      required this.url});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                height: height * .2,
                color: Colors.blue,
                child: SafeArea(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(Icons.arrow_back))),
                      ),
                      const SizedBox(
                        width: 66,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Detail Doctor',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Container(
                    width: width,
                    // height: height * .8,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Text(
                            widget.name,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            widget.specialist,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const DocRatings(),
                        const SizedBox(height: 5),
                        const DocAbout(),
                        const SizedBox(height: 17),
                        const ScheduleDay(),
                        const SizedBox(height: 17),
                        const ScheduleTime(),
                      ],
                    )),
              ),
            ],
          ),
          Positioned(
              right: 0,
              left: 0,
              top: height / 6.5,
              child: CachedNetworkImage(
                fit: BoxFit.scaleDown,
                imageUrl: widget.url,
                imageBuilder: (context, imageProvider) =>
                    CircleAvatar(radius: 40, backgroundImage: imageProvider),
              ))
        ]),
      ),
    );
  }
}
