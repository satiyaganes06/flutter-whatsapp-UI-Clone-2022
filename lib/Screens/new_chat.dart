import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_1/Models/users_profile_model.dart';
import 'package:whatsapp_ui_clone_1/widget/new_chat_item.dart';

class NewChatPage extends StatefulWidget {
  
  List<UsersProfile> userProfileList;
  
  NewChatPage(this.userProfileList);

  @override
  _NewChatPageState createState() => _NewChatPageState();
}

class _NewChatPageState extends State<NewChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: ListView.builder(itemBuilder: (bCtx, i){
        return NewMessageItem(widget.userProfileList[i].name, 
            widget.userProfileList[i].img, widget.userProfileList[i].caption);
      }, itemCount: widget.userProfileList.length)
    );
  }
}