import 'package:flutter/material.dart';

class NewMessageItem extends StatefulWidget {
  final String name;
  final String img;
  final String caption;

  NewMessageItem(this.name, this.img, this.caption);

  @override
  _NewMessageItemState createState() => _NewMessageItemState();
}

class _NewMessageItemState extends State<NewMessageItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                width: 40,
                height: 40,
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
                        style: const TextStyle(fontSize: 18)
                      ),
                        
                    ] 
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(widget.caption,
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
      );
  }
}