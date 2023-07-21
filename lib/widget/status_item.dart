import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StatusItem extends StatefulWidget {
  final String name;
  final String img;
  final date_time;
  Function(String) statusUpdate;

  StatusItem(this.name, this.img, this.date_time, this.statusUpdate);

  @override
  _StatusItemState createState() => _StatusItemState();
}

class _StatusItemState extends State<StatusItem> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.statusUpdate(widget.name);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(widget.img),
                  fit: BoxFit.fill
                )
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,
                    style: const TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold)
                  ),
                    Text(widget.date_time.toString(), 
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                    fontSize: 14,
                  ),)
                ],
              )
            )
          ]
        )
      )
    );
  }
}