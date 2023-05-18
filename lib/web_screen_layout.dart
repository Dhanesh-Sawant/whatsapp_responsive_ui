import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/web_profile_bar.dart';
import 'package:whatsapp_responsive/web_search_bar.dart';
import 'chat_list.dart';
import 'messages_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111B21),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ChatList(),
                ],
              ),
            ),
          ),

          // Expanded(child: Container(child: Center(child: Text('hello'),),)),

          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            child: MessagesList(
              image: 'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
              text: 'Rivaan Ranawat'
            ),
          )
        ],
      ),
    );
  }
}
