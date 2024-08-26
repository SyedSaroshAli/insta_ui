import 'package:flutter/material.dart';
import 'package:instagram_ui/bottom_navigation.dart';
import 'package:instagram_ui/model/chat_model.dart';
import 'package:instagram_ui/widgets/chat_tile.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left:15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyBottomNavigationBar()));
                    },
                    child: Icon(Icons.arrow_back_rounded,color: Colors.white,)),
                  Row(
                    children: [
                      Text('syed._.saroosh._.ali',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white
                      ),),
                      Icon(Icons.keyboard_arrow_down_sharp,
                      size: 17,
                      color: Colors.white,)
                    ],
                  ),
                  Image.asset('assets/write_message.png',
                  height: 35,), 
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/35,),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   TextField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 33, 35, 46),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26),
                    
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26),
                    
                  ),
                  prefixIcon: Image.asset('assets/Meta_AI_icon.png',
                  height: 50,),
                  hintText: 'Ask Meta AI or Search',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400
                  ),
                  contentPadding: EdgeInsets.all(13)
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height/40 ,),
              Padding(
                padding: const EdgeInsets.only(left:10),
                child: Container(
                  height: 150,
                  width: 80,
                  child: Stack(
                  children: [
                    
                    Positioned(
                      bottom: 40,
                      
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          'assets/profile.jpg'
                        ),
                      ),
                    ),
                    
                    Positioned(
                      left: -1,
                      top:-1,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 17,vertical: 10),
                        
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 33, 33, 33),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Text('Note...',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14
                        ),),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 32,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 33, 33, 33),
                          borderRadius: BorderRadius.circular(60)
                        ),
                      ),
                    ),

                    Positioned(
                      left: 30,
                      top: 47,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 33, 33, 33),
                          borderRadius: BorderRadius.circular(60)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 120,
                        left:9
                      ),
                      child: Text(
                        'Your note',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 14,
                         ),
                      ),
                    )
                  ],
                              ),
                ),
              ),
            SizedBox(height: MediaQuery.of(context).size.height/100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  'Messages',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16
                  ),
                  ),
                  Text(
                  'Requests (1)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 16
                  ),
                  ),
                ],
              ),
              
              SizedBox(height: MediaQuery.of(context).size.height/32,),
              for(int i=0;i<chatDetail.length;i++)
              ChatTile(
                name: chatDetail[i].name, 
                imagePath: chatDetail[i].imagePath, 
                message: chatDetail[i].message, 
                time:chatDetail[i].time)
              ],),))
            //   TextField(
            //     style: TextStyle(
            //       color: Colors.white
            //     ),
            //     decoration: InputDecoration(
            //       fillColor: Color.fromARGB(255, 33, 35, 46),
            //       filled: true,
            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(26),
                    
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(26),
                    
            //       ),
            //       prefixIcon: Image.asset('assets/Meta_AI_icon.png',
            //       height: 50,),
            //       hintText: 'Ask Meta AI or Search',
            //       hintStyle: TextStyle(
            //         color: Colors.grey.shade400
            //       ),
            //       contentPadding: EdgeInsets.all(20)
            //     ),
            //   ),

            //   SizedBox(height: MediaQuery.of(context).size.height/30 ,),
            //   Padding(
            //     padding: const EdgeInsets.only(left:10),
            //     child: Container(
            //       height: 150,
            //       width: 80,
            //       child: Stack(
            //       children: [
                    
            //         Positioned(
            //           bottom: 40,
                      
            //           child: CircleAvatar(
            //             radius: 40,
            //             backgroundImage: AssetImage(
            //               'assets/profile.jpg'
            //             ),
            //           ),
            //         ),
                    
            //         Positioned(
            //           left: -1,
            //           top:-1,
            //           child: Container(
            //             padding: EdgeInsets.symmetric(horizontal: 17,vertical: 10),
                        
            //             decoration: BoxDecoration(
            //               color: Color.fromARGB(255, 33, 33, 33),
            //               borderRadius: BorderRadius.circular(100)
            //             ),
            //             child: Text('Note...',
            //             style: TextStyle(
            //               color: Colors.grey.shade400,
            //               fontSize: 14
            //             ),),
            //           ),
            //         ),
            //         Positioned(
            //           left: 20,
            //           top: 32,
            //           child: Container(
            //             height: 15,
            //             width: 15,
            //             decoration: BoxDecoration(
            //               color:  Color.fromARGB(255, 33, 33, 33),
            //               borderRadius: BorderRadius.circular(60)
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(
            //             top: 120,
            //             left:9
            //           ),
            //           child: Text(
            //             'Your note',
            //             style: TextStyle(
            //                 color: Colors.grey.shade400,
            //                 fontSize: 14,
            //              ),
            //           ),
            //         )
            //       ],
            //                   ),
            //     ),
            //   ),
            // SizedBox(height: MediaQuery.of(context).size.height/40,),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //       'Messages',
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Colors.white,
            //         fontSize: 16
            //       ),
            //       ),
            //       Text(
            //       'Requests',
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Colors.blue,
            //         fontSize: 16
            //       ),
            //       ),
            //     ],
            //   ),
              
            //   SizedBox(height: MediaQuery.of(context).size.height/32,),
            //   for(int i=0;i<chatDetail.length;i++)
            //   ChatTile(
            //     name: chatDetail[i].name, 
            //     imagePath: chatDetail[i].imagePath, 
            //     message: chatDetail[i].message, 
            //     time:chatDetail[i].time)
              ],
          ),
        )),
    );
  }
}