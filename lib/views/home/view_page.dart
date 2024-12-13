import 'package:estate_app/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/estate.dart';

// ignore: must_be_immutable
class ViewPage extends StatelessWidget {
  Estate estate;
  ViewPage({super.key, required this.estate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 380,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(estate.image), fit: BoxFit.cover)),
              ),
              Positioned(
                left: 2,
                top: 10,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 22),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                //spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 4)),
                          ]),
                      child: const Center(
                          child: Icon(
                        Icons.arrow_back_ios,
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
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
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CustomBtn(label: "BUY", function: () {}),
          )
        ],
      ),
    );
  }
}
