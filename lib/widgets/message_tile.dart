// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:estate_app/views/message/message_view.dart';
import 'package:flutter/material.dart';

import 'package:estate_app/models/message.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class MessageTile extends StatelessWidget {
  Message message;
  MessageTile({
    super.key,
    required this.message,
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MessageView(message: message)));
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.withOpacity(0.3)),
        child: Row(
          children: [
            //avatar,
            Stack(children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(message.user.avatar),
              ),
              Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: message.user.isOnline
                      ? Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                        )
                      : Container())
            ]),

            //title
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  message.user.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(message.content)
              ],
            ),

            //trailing
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Text(formatTimestamp(message.timestamp))],
              ),
            )
          ],
        ),
      ),
    );
  }
}
