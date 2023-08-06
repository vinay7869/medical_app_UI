import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Screens/HomeScreen/doc_info_model.dart';
import '../DetailsScreen/details_screen.dart';

class TopDoctorsList extends StatefulWidget {
  const TopDoctorsList({super.key});

  @override
  State<TopDoctorsList> createState() => _TopDoctorsListState();
}

class _TopDoctorsListState extends State<TopDoctorsList> {
  List<DocInfoModel> docInfoModel = [
    DocInfoModel(
        name: 'dr.Kunal Mehta',
        speciality: 'Heart specialist',
        rating: 4.7,
        url:
            'https://www.writergirl.com/wp-content/uploads/2014/11/Doctor-790X1024.jpg',
        reviews: 127),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Top Doctor's for you",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: () {}, child: const Text('See All'))
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                      name: docInfoModel[0].name!,
                      specialist: docInfoModel[0].speciality!,
                      url: docInfoModel[0].url!,
                      rating: docInfoModel[0].rating!),
                ));
          },
          child: Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: docInfoModel[0].url!,
                  imageBuilder: (context, imageProvider) => Container(
                    height: 77,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: imageProvider),
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.all(12),
                  ),
                ),
                const SizedBox(width: 7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(3),
                      child: Text('Heart Specialist'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        docInfoModel[0].name!,
                        style: const TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text('⭐ 4.7'),
                        ),
                        const SizedBox(width: 12),
                        Text('${docInfoModel[0].reviews} Reviews')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
