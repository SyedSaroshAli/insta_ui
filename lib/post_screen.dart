import 'package:flutter/material.dart';
import 'package:instagram_ui/bottom_navigation.dart';
import 'package:instagram_ui/widgets/post_widget2.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyBottomNavigationBar()));
                    },
                    child: Icon(Icons.arrow_back_rounded,
                    size: 30,
                    color: Colors.white,),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/15,),
                      
                  Text('Posts',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white
                  ),)
                ],
              ),
            ),
            SizedBox(height: 20,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                   for(int i=0;i<3;i++)
          PostWidget2(
            index: i,
            image: 'assets/profile.jpg',
            likes: 50,
            userName: 'syed._.saroosh._.ali',
            post: 'assets/profile.jpg', 
            commentNumber: 10,
            postTime: '1w',
            postImage: 'assets/profile.jpg',
            bio: 'Sky is the limit',
          )
                ],
              ),
            ))
            
          ],
        ) 
      ),
    );
  }
}