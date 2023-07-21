import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_1/Models/users_call_model.dart';
import 'package:whatsapp_ui_clone_1/widget/call_item.dart';

class CallScreen extends StatelessWidget {
  
List<UserCallModel> userCallList;

CallScreen(this.userCallList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (bCtx, i){
      return CallItem(userCallList[i].img, userCallList[i].name, 
                      userCallList[i].type_of_call, userCallList[i].in_or_out,  
                      userCallList[i].date_time);
    }, itemCount: userCallList.length);
  }
}
