import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../../widgets/category_widget.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/post_widget.dart';

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
    var mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: customAppBar(context),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mheight * 0.02,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories,
              ),
            ),
            customRow("Recommended", () {}),
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
    );
  }

  Padding customRow(String name, Function() function) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      child: Row(
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          TextButton(onPressed: function, child: const Text("more"))
        ],
      ),
    );
  }
}
