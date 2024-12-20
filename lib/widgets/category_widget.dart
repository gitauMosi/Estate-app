// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  String label;
  String img;
  CategoryWidget({
    super.key,
    required this.label,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).cardColor,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      //spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 4)),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(img),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              label,
              style: const TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
