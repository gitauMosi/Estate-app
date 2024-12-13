import 'package:estate_app/constants/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBtn extends StatelessWidget {
  Function() function;
  String label;
  CustomBtn({super.key, required this.label, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.primaryColor,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  //spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 4)),
            ]),
        height: 40,
        width: MediaQuery.of(context).size.width * 0.60,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
