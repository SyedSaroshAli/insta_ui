import 'package:flutter/material.dart';
import 'package:instagram_ui/chat_screen.dart';

class ChatTile extends StatelessWidget {
  final String name,imagePath,message,time;
  const ChatTile({super.key, required this.name, required this.imagePath, required this.message, required this.time});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChatScreen()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 27),
        child: Row(    
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage(imagePath),
                  radius: 27,
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    )),
                    Row(
                      children: [
                        Text(message,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14
                        )),
                        SizedBox(width: 10,),
                        Text(time,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16
                        )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 10,),
            Icon(Icons.photo_camera_outlined,
            color: Colors.grey.shade500,
            size: 27,)
          ],
        ),
      ),
    );
  }
}