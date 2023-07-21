import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_1/Models/users_status_model.dart';
import 'package:whatsapp_ui_clone_1/widget/status/status_recent_listview.dart';
import 'package:whatsapp_ui_clone_1/widget/status/status_seen_listview.dart';

// ignore: must_be_immutable
class StatusScreen extends StatefulWidget {
  
  List<UserStatusModel> userStatusList;
  Function(String) statusUpdate;

  StatusScreen(this.userStatusList, this.statusUpdate);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {


  seenStatus(){
    List<UserStatusModel> statusList = [];

    for (var i = 0; i < widget.userStatusList.length; i++) {
      if(widget.userStatusList[i].seen_Status == true){
        statusList.add(widget.userStatusList[i]);
      }
    }

    return statusList;
  }

  recentStatus(){
    List<UserStatusModel> statusList = [];

    for (var i = 0; i < widget.userStatusList.length; i++) {
      if(widget.userStatusList[i].seen_Status == false){
        statusList.add(widget.userStatusList[i]);
      }
    }

    return statusList;
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //My status
            Container(
              padding:const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('My Status',
                          style:  TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold)
                        ),
                          Text('Tap to add status update', 
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                          fontSize: 14,
                        ),)
                      ],
                    )
                  )
                ]
              )
            ),
          
            //separator
            Container(
              color: Colors.grey[200],
              height: 35,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10),
              child: Text('Recent updates',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                )),
            ),

            //Peoples recent Status 
            RecentStatusListView(recentStatus(), widget.statusUpdate),

            Container(
              margin: const EdgeInsets.only(top:10),
              color: Colors.grey[200],
              height: 35,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Text('Viewed status',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                )),
            ),

            //Peoples viewed Status 
            SeenStatusListView(seenStatus(), widget.statusUpdate)

          
          ],
      );
  }
}