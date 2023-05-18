import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/messages_list.dart';
import 'info.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesList(image: '${info[index]['profilePic']}',text: '${info[index]['name']}')),
              );
            },
            child: ListTile(
              title: Text('${info[index]['name']}'),
              subtitle: Text('${info[index]['message']}'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${info[index]['profilePic']}'),
              ),
              trailing: Text('${info[index]['time']}',style: TextStyle(color: Colors.grey),),
            ),
          );
        },
      ),
    );
  }
}
