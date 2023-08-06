import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DocAbout extends StatelessWidget {
  final String about =
      'data data data data datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata';
  const DocAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'About Doctor',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
          ReadMoreText(
            about,
            trimLines: 3,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade500,
            ),
            trimCollapsedText: 'Read more',
            trimExpandedText: '  Read less',
            trimMode: TrimMode.Line,
          )
        ],
      ),
    );
  }
}
