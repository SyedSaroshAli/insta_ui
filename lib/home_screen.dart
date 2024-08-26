import 'package:flutter/material.dart';
import 'package:instagram_ui/messages_screen.dart';
import 'package:instagram_ui/model/user_detail_model.dart';
import 'package:instagram_ui/widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/instagram.png',
                    
                      width: 120,),
                      Icon(Icons.keyboard_arrow_down_sharp,
                      color: Colors.white,
                      size: 20,),
                    ],
                  ),
                  
                  Row(
                    children: [ 
                      Icon(Icons.favorite_border_rounded,
                      color: Colors.white,    
                      size: 28,),
                      SizedBox(width: MediaQuery.of(context).size.width/15,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MessageScreen()));
                        },
                        child: Image.asset('assets/messenger2.png',
                        width: 25,
                        ),
                      ),
                   
                    ],
                  )
                ],
              ),
            ),
            
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('assets/profile.jpg',
                              
                              ),),
                          
                              Padding(
                                padding: const EdgeInsets.only(left:50,top:50),
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.black,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.blue,
                                    child: Center(child: Icon(Icons.add_rounded,color: Colors.white,size: 17,)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:90,left: 8),
                                child: Text('Your Story',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13
                                ),),
                              )
                            ],
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:20),
                              child: SizedBox(
                                height: 120,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context,index){
                                    UserDetail user = userItems[index];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 88,
                                            width: 88,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                colors: [Colors.amber,Colors.pink],
                                                begin: Alignment.bottomLeft,
                                                end: Alignment.bottomCenter
                                              )
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(2),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(4),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(image: AssetImage(user.image),
                                                      fit: BoxFit.cover),
                                                    ),
                                              
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(user.username,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13
                                          ),)
                                        ],
                                      ),
                                    );
                                  }),
                              ),
                            ))
                        ],
                      ),
                    ),
                     for(int i=0;i<userItems.length;i++)
            PostWidget(
              index: i,
              image: userItems[i].image,
              likes: userItems[i].likes,
              userName: userItems[i].username,
              post: userItems[i].post, 
              commentNumber: userItems[i].commentNumber,
              postTime: userItems[i].postTime,
              postImage: userItems[i].postImage,
              bio: userItems[i].comment,
            )
                  ],
                ),
              ),
            ),

            // for(int i=0;i<userItems.length;i++)
            // PostWidget(
            //   index: i,
            //   image: userItems[i].image,
            //   likes: userItems[i].likes,
            //   userName: userItems[i].username,
            //   post: userItems[i].post, 
            // )
          ]
        ),
      ),
     // bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}