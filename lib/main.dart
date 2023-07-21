import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_1/Screens/chatscreen.dart';
import 'package:whatsapp_ui_clone_1/widget/floatbutton.dart';

import 'Screens/callscreen.dart';
import 'Screens/statusscreen.dart';
import 'database/database.dart';

void main() => runApp(WhatsAppHomePage());

class WhatsAppHomePage extends StatefulWidget {

  @override
  _WhatsAppHomePageState createState() => _WhatsAppHomePageState();

}

class _WhatsAppHomePageState extends State<WhatsAppHomePage> {

  var database = Database();


  void statusUpdate(String name){
    for (var i = 0; i < database.userStatusList.length; i++) {
      if(database.userStatusList[i].name == name){
        setState(() {
          database.userStatusList[i].seen_Status = !database.userStatusList[i].seen_Status;
        });
      }
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'), 
            backgroundColor: const Color.fromRGBO(7, 94, 84, 1),
            actions: const [
              Padding(
                padding:  EdgeInsets.only(right: 20),
                child:  Icon(Icons.search, size:30),
              ),
                Padding(
                padding:  EdgeInsets.only(right: 10),
                child:  Icon(Icons.more_vert, size:30),
              )
            ],
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Padding(
                    padding:  EdgeInsets.only(right: 20),
                    child:  Icon(Icons.camera_alt_rounded)
                  )
                ),
                Tab(child: Text('CHATS')),
                Tab(child: Text('STATUS')),
                Tab(child: Text('CALLS'))
              ]
            )
          ),
          body:  TabBarView(
            children: [
              Center(
                child: const Text('camera')
              ), 
              Center(
                child: ChatsScreen(database.userChatList),
              ),
              Center(
                child: StatusScreen(database.userStatusList, statusUpdate)
              ),

              Center(
                child: CallScreen(database.userCallList)
              ),
            ]
          ),

          floatingActionButton: MessageFloatButton(database.userProfileList),
          
        )
      )
    );
  }
}


