import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_1/Models/users_profile_model.dart';
import 'package:whatsapp_ui_clone_1/Screens/new_chat.dart';

class MessageFloatButton extends StatelessWidget {

  List<UsersProfile> userProfileList;
  
  MessageFloatButton(this.userProfileList);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        showModalBottomSheet(context: context, builder: (bCtx){
          return NewChatPage(userProfileList);
        }, isScrollControlled: true);
      },
      backgroundColor: const Color.fromRGBO	(37, 211, 102, 1),
      child: const Icon(Icons.chat_rounded)
    );
  }
}