import 'package:estate_app/constants/color.dart';
import 'package:estate_app/data/data.dart';
import 'package:estate_app/widgets/message_tile.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Chats",
                    style: TextStyle(
                        fontSize: 25,
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: AppColor.primaryColorLight,
                      filled: true,
                      hintText: "Search Your agent...",
                      suffixIcon: const Icon(
                        Icons.search,
                        color: AppColor.primaryColor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return MessageTile(message: messages[index],);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
