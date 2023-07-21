import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChatItem extends StatefulWidget {
  final String name;
  final String recent_Chat;
  final String img;

  ChatItem(this.name, this.recent_Chat, this.img);

  @override
  _ChatItemState createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Fluttertoast.showToast(msg: widget.name);
      },
      child: Container(
        height: 80,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(widget.img),
                    fit: BoxFit.fill
                  ),
                ),
              ),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text(widget.name,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                      ),
                        const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text('12:24', 
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 12,
                          ),)
                      )
                    ] 
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(widget.recent_Chat,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                          fontSize: 16,
                      ),
                    ),
                  ),
                ]
              )
            )
          
          ],
        )
      )
    );
  }
}