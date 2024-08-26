import 'package:flutter/material.dart';
import 'package:instagram_ui/messages_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen()));
                        },
                        child: Icon(
                        Icons.arrow_back_rounded,color: Colors.white,size: 30,)),
                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/shahzaman.jpeg'),
                        radius: 17,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/25,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Shahzaman',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15
                              ),),
                              const SizedBox(width: 3,),
                              Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.grey.shade600,
                              size: 12,)
                            ],
                          ),
                          Text('shahzamannn',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600,
                                fontSize: 13
                              ),),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.call_outlined,
                      color: Colors.white,
                      size: 28,),
                      SizedBox(width: 18,),
                      Icon(Icons.videocam_outlined,
                      color: Colors.white,
                      size: 35,),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left:15,right: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      CircleAvatar(
                            backgroundImage: AssetImage('assets/shahzaman.jpeg'),
                            radius: 60,
                          ),
                          SizedBox(height: 8,),
                    Text('Shahzaman',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  
                    Text('shahzamannn',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15               
                    ),),
                  
                    Text('40 followers • 0 posts',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 18,               
                    ),),
                  
                    Text('You follow each other on Instagram',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 18,               
                    ),),
                    
                    SizedBox(height: 12,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text('View Profile',
                      style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold
                      ),),
                    ),
                  
                    SizedBox(height: MediaQuery.of(context).size.height/18,),
                    
                    Text('Today',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,               
                    ),),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(22)
                          ),
                  
                          child: Text('Hey There',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),
                    SizedBox(height: 16,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         CircleAvatar(
                            backgroundImage: AssetImage('assets/shahzaman.jpeg'),
                            radius: 17,
                          ),
                        SizedBox(width: 6,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(22)
                          ),
                  
                          child: Text('Yo! What\'s up?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),
                  
                     SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(22)
                          ),
                  
                          child: Text('Send me pictures of the assignment ASAP!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),
                  
                    SizedBox(height: 18,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         CircleAvatar(
                            backgroundImage: AssetImage('assets/shahzaman.jpeg'),
                            radius: 17,
                          ),
                        SizedBox(width: 6,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(22)
                          ),
                  
                          child: Text('I have\'nt completed it yet',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),

                     SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(24)
                          ),
                  
                          child: Text(':)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),

                     SizedBox(height: 18,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         CircleAvatar(
                            backgroundImage: AssetImage('assets/shahzaman.jpeg'),
                            radius: 17,
                          ),
                        SizedBox(width: 6,),
                        Container(
                          
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(22)
                          ),
                  
                          child: Text('I\'m serious.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),

                     SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/1.3,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(24)
                          ),
                  
                          child: Text('We have to submit it tommorrow do something',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),

                    SizedBox(height: 18,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         CircleAvatar(
                            backgroundImage: AssetImage('assets/shahzaman.jpeg'),
                            radius: 17,
                          ),
                        SizedBox(width: 6,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(22)
                          ),
                  
                          child: Text('Wait, let me ask from another friend',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),

                     SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(24)
                          ),
                  
                          child: Text('Okay',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),

                    SizedBox(height: 15,),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 7),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
                decoration: InputDecoration(
                  
                  contentPadding: EdgeInsets.only(bottom: 30),
                  prefixIcon: Container(
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child:Icon (Icons.camera_alt_rounded,
                    color: Colors.white,
                    size: 28,),
                  ),
                  
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28)
                  ),
                  hintText: 'Message...',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500,
                  ),

                  suffixIcon: Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon (Icons.mic_none_rounded,
                      color: Colors.white,
                      size: 30,),
                      
                      SizedBox(width: MediaQuery.of(context).size.width/35,),
                      Icon (Icons.image_outlined,
                      color: Colors.white,
                      size: 30,),
                      
                      SizedBox(width: MediaQuery.of(context).size.width/35,),
                      Icon (Icons.sticky_note_2_outlined,
                      color: Colors.white,
                      size: 30,),
                      
                      SizedBox(width: MediaQuery.of(context).size.width/35,),
                      Icon (Icons.add_circle_outline_sharp,
                      color: Colors.white,
                      size: 30,),
                    
                      SizedBox(width: MediaQuery.of(context).size.width/35,),
                      ],
                    ),
                  )
                ),
              
              ),
            )
          ],
        )),
    );
  }
}