import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_1/Models/users_chat_model.dart';
import 'package:whatsapp_ui_clone_1/widget/chat_item.dart';


class ChatsScreen extends StatelessWidget {

  final List<UserChatModel> userList;
  
  ChatsScreen(this.userList);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: ListView.builder(itemBuilder: (ctx, i){
          return ChatItem(
            userList[i].name, 
            userList[i].recent_Chat, 
            userList[i].img
          );
        },itemCount: userList.length,
      ),
    );
  }
}