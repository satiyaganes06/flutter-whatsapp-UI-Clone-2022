import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_1/Models/users_status_model.dart';
import '../status_item.dart';


class SeenStatusListView extends StatelessWidget {

  List<UserStatusModel> statusList;
  Function(String) statusUpdate;

  SeenStatusListView(this.statusList, this.statusUpdate);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (bCtx, i){
        return StatusItem(statusList[i].name, statusList[i].img, 
                      statusList[i].date_time, statusUpdate);
      }, 
      itemCount: statusList.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
    );
  }
}