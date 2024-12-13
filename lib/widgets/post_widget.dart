import 'package:estate_app/views/home/view_page.dart';
import 'package:flutter/material.dart';

import 'package:estate_app/models/estate.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class PostWidget extends StatelessWidget {
  Estate estate;
  PostWidget({
    super.key,
    required this.estate,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>ViewPage(estate: estate));
      },
      child: Container(
        height: 250,
        margin: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).cardColor,
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                //spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 4)),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  image: DecorationImage(
                      image: AssetImage(estate.image), fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: [
                  Text(
                    estate.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    "\$${estate.price}/month",
                    style: const TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 4,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: [
                  const Icon(Icons.location_on, size: 15),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    estate.location,
                    style: const TextStyle(fontWeight: FontWeight.w100),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.bed,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${estate.beds} Beds",
                            style: const TextStyle(fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.stairs_outlined, size: 15),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${estate.floors} Floors",
                            style: const TextStyle(fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.bathroom_outlined, size: 15),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${estate.baths} Baths",
                            style: const TextStyle(fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.square_foot,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${estate.sqft} sqft",
                            style: const TextStyle(fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
