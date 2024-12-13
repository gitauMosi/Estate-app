import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context) {
    return AppBar(
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Location",
            style: TextStyle(fontSize: 12),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 15,
              ),
              Text(
                "San Jose, CA ",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
              ),
            ],
          )
        ],
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                Icons.notifications_outlined,
              )),
            ),
          ),
        ),
      ],
    );
  }