class MessageText {
  final String id;
  final String content;
  DateTime timestamp;
  bool isMe;

  MessageText(
      {required this.id,
      required this.content,
      required this.timestamp,
      required this.isMe});
}
