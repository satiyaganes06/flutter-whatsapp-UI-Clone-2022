import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_1/Models/users_status_model.dart';
import '../status_item.dart';


class RecentStatusListView extends StatelessWidget {

  List<UserStatusModel> statusList;
  Function(String) statusUpdate;

  RecentStatusListView(this.statusList, this.statusUpdate);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      child: ListView.builder(itemBuilder: (bCtx, i){
        return StatusItem(statusList[i].name, statusList[i].img, 
                      statusList[i].date_time, statusUpdate);
      }, itemCount: statusList.length)
    );
  }
}