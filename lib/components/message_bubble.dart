import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({
    @required this.text,
    @required this.sender,
    this.isMe,
  });

  final String text;
  final String sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            sender,
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
          SizedBox(
            height: 4.0,
          ),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    bottomLeft: Radius.circular(18.0),
                    bottomRight: Radius.circular(18.0),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(18.0),
                    bottomLeft: Radius.circular(18.0),
                    bottomRight: Radius.circular(18.0),
                  ),
            elevation: 4.0,
            color: isMe
                ? Theme.of(context).accentColor.withOpacity(0.4)
                : Colors.grey[400],
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 24.0,
              ),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: isMe ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
