import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/chat_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Color(0xff111B21),
        appBar: AppBar(
          backgroundColor: Color(0xff222E35),
          title: Text('WhatsApp',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[300])),
          actions: const [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search,color: Colors.grey,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert, color: Colors.grey),
            )
          ],
          bottom: const TabBar(

            indicatorWeight: 3,
            unselectedLabelColor: Colors.grey,
            labelColor: Color(0xff53caa6),

            tabs: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('CHATS'),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('STATUS'),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('CALLS'),
              ),
            ],

          ),

        ),

        body:
        TabBarView(
          children: [
            ChatList(),
            Center(child: Text('status')),
            Center(child: Text('calls')),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff53caa6),
          onPressed: () {  },
          child: Icon(Icons.comment, color: Colors.white,),
        ),

      ),
    );
  }
}
