// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:estate_app/data/data.dart';
import 'package:estate_app/widgets/message_text_widget.dart';
import 'package:flutter/material.dart';

import 'package:estate_app/models/message.dart';

import '../../constants/color.dart';

// ignore: must_be_immutable
class MessageView extends StatelessWidget {
  Message message;
  MessageView({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(message.user.avatar),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(message.user.name),
                message.user.isOnline
                    ? Row(
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.primaryColor,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Online",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      )
                    : const Text("")
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.primaryColor),
                child: const Icon(
                  Icons.video_call,
                  size: 18,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.primaryColor),
                child: const Icon(
                  Icons.call,
                  size: 18,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: messagesText.length,
                itemBuilder: (context, index) {
                  return MessageTextWidget(mes: messagesText[index]);
                }),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: AppColor.primaryColorLight,
                  filled: true,
                  hintText: "Type Something...",
                  suffixIcon: const Icon(
                    Icons.send,
                    color: AppColor.primaryColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none)),
            ),
          )
        ],
      ),
    );
  }
}
