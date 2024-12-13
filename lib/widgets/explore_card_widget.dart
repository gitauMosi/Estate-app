import 'package:estate_app/models/estate.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreCardWidget extends StatelessWidget {
  Estate estate;
  ExploreCardWidget({super.key, required this.estate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              estate.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text("\$${estate.price}"),
          )
        ],
      ),
    );
  }
}
