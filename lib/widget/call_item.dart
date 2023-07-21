import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CallItem extends StatefulWidget {
  final String img;
  final String name;
  final String type_of_call;
  late final String in_or_out;
  final date_time;

  CallItem(this.img, this.name, this.type_of_call, 
            this.in_or_out, this.date_time);

  @override
  _CallItemState createState() => _CallItemState();
}

class _CallItemState extends State<CallItem> {

  Widget in_or_out_icon(){
    if(widget.in_or_out != 'incoming'){
      return const Icon(Icons.call_received, 
        size:15, 
        color: Colors.red
      );

    }else{
      return const Icon(Icons.call_received, 
        size:15, 
        color: Colors.greenAccent
      );
    }
  }

  Widget typeOfCall(){
    var icon;

    if(widget.type_of_call == 'voice'){
      icon = Icons.call_rounded;

    }else{
      icon = Icons.videocam_rounded;
    }

    return Icon(icon, size:25, color: const Color.fromRGBO(7, 94, 84, 1));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //color: const Color.fromRGBO(253, 255, 245, 1),
      height: 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment : CrossAxisAlignment.center,
        children:  [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(widget.img),
                fit: BoxFit.fill
              )
            ),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                ),

                Row(
                  children: [
                    in_or_out_icon(),

                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(widget.date_time.toString(), 
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),)
                    )
                  ] 
                )
              ],
            ),
          ),
        
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: GestureDetector(
              onTap: (){
                Fluttertoast.showToast(msg: widget.type_of_call + ' calling...');
              },
              child: typeOfCall()
            ),
          ),
        ],
      ),
    );
  }
}