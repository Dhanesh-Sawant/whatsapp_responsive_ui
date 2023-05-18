import 'package:flutter/material.dart';
import 'info.dart';
import 'message_card.dart';


class MessagesList extends StatelessWidget {
  const MessagesList({Key? key, required this.image, required this.text}) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff222E35),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(image),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(text, style: TextStyle(fontSize: 19)),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.video_call),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.call_rounded),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(

        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/wp6988787.webp'),
                      fit: BoxFit.cover
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: MessageCard(
                            isMe: messages[index]['isMe'] ?? '',
                            text: messages[index]['text'] ?? '',
                            time: messages[index]['time'] ?? ''
                        ),
                      );
                    }
                ),
              ),
            ),
          ),

          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(31, 44, 52, 1),
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(Icons.emoji_emotions, color: Colors.grey,),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.camera_alt, color: Colors.grey,),
                    Icon(Icons.attach_file, color: Colors.grey,),
                    Icon(Icons.money, color: Colors.grey,),
                  ],
                ),
              ),
              hintText: 'Type a message!',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: const BorderSide(
                  width: 2,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),

        ],

      )
    );
  }
}
