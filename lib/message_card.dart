import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({Key? key, required this.isMe, required this.text, required this.time}) : super(key: key);

  final String isMe;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe=='true' ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
          minHeight: MediaQuery.of(context).size.height * 0.04
        ),
        child: Card(
          color: isMe=='true' ? Color(0xff127a47) : Color(0xff222E35),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(text),
          ),
          elevation: 3,
          shape:  RoundedRectangleBorder(
            borderRadius: isMe=='true' ? BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.zero,
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            )
                :
            BorderRadius.only(
              topLeft: Radius.zero,
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            )
          ),
        ),
      ),
    );
  }
}
