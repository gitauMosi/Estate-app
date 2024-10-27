// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:estate_app/constants/color.dart';
import 'package:flutter/material.dart';

import 'package:estate_app/models/estate.dart';

// ignore: must_be_immutable
class PostWidget extends StatelessWidget {
  Estate estate;
  PostWidget({
    super.key,
    required this.estate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.primaryColorLight.withOpacity(0.2),
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
                Text(estate.name),
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
                Text(estate.location)
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
                        const Icon(Icons.bed, size: 15),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("${estate.beds} Beds")
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.stairs_outlined, size: 15),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("${estate.floors} Floors")
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
                        Text("${estate.baths} Baths")
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.square_foot, size: 15),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("${estate.sqft} sqft")
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
