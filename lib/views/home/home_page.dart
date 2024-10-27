import 'package:estate_app/constants/color.dart';
import 'package:estate_app/data/data.dart';
import 'package:estate_app/widgets/category_widget.dart';
import 'package:estate_app/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Widget> categories = [
    CategoryWidget(label: "Apartment", img: "assets/icons/apart.png"),
    CategoryWidget(label: "Cottage", img: "assets/icons/cottage.png"),
    CategoryWidget(label: "Business Hub", img: "assets/icons/business.png"),
    CategoryWidget(label: "Beach House", img: "assets/icons/beach.png"),
    CategoryWidget(label: "Villa", img: "assets/icons/villa.png"),
    CategoryWidget(label: "Foundation", img: "assets/icons/foundation.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(fontSize: 12),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                size: 15, color: AppColor.primaryColor),
                            Text(
                              "San Jose, CA ",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              color: AppColor.primaryColor,
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),

                    //
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Icon(
                          Icons.more_horiz,
                          color: Colors.red,
                        )),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categories,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Recommended",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text("More")
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: estates.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return PostWidget(estate: estates[index]);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
