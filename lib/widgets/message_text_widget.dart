// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:estate_app/constants/color.dart';
import 'package:estate_app/models/message_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class MessageTextWidget extends StatelessWidget {
  MessageText mes;
  MessageTextWidget({
    super.key,
    required this.mes,
  });

  // Function to format timestamp
  String formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays < 1) {
      // Format the time as "hh:mm a"
      return DateFormat.jm().format(timestamp); // e.g., "12:30 AM"
    } else if (difference.inDays < 7) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inDays < 30) {
      return '${(difference.inDays / 7).floor()} week${((difference.inDays / 7).floor() > 1) ? 's' : ''} ago';
    } else {
      return '${(difference.inDays / 30).floor()} month${((difference.inDays / 30).floor() > 1) ? 's' : ''} ago';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
     
      alignment: mes.isMe ? Alignment.centerRight: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 8
        ),
        margin: const EdgeInsets.all(5),
        
        width: MediaQuery.of(context).size.width * 0.70,
        decoration: BoxDecoration(
            color: mes.isMe ? AppColor.primaryColor : AppColor.primaryColorLight,
            borderRadius: mes.isMe ? const BorderRadius.only(
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ) : const BorderRadius.only(
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                mes.content,
                style: TextStyle(
                    fontSize: 13,
                    color: mes.isMe ? Colors.white : AppColor.primaryColor),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                formatTimestamp(mes.timestamp),
                style: TextStyle(
                    fontSize: 13,
                    color: mes.isMe ? Colors.white : AppColor.primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
