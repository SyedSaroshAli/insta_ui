import 'package:flutter/material.dart';
import 'package:instagram_ui/model/user_detail_model.dart';
import 'package:instagram_ui/post_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:12,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/lock.png',
                          height: 24,),
                          SizedBox(width: 3,),
                          Text('syed._.saroosh...',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),),
                          Icon(Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                          size: 20,),
                        ],
                      ),
                  
                      Row(
                        children: [
                          Image.asset('assets/threads.png',
                          height: 26,),
                          SizedBox(width: MediaQuery.of(context).size.width/25,),
                          Image.asset('assets/add_post.png',
                          height: 26,),
                          SizedBox(width: MediaQuery.of(context).size.width/25,),
                          Icon(Icons.density_medium_rounded,
                          color: Colors.white,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30),
                Padding(
                  padding: const EdgeInsets.only(left:14,right: 16),
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
                                      padding: const EdgeInsets.only(top:90,),
                                      child: Text('Syed Sarosh Ali',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    )
                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/18,),
                                Padding(
                                  padding: const EdgeInsets.only(top:10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Text('2',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),),
                                    
                                          Text('posts',
                                          style: TextStyle(
                                            
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),),
                                        ],
                                      ),
                  
                                      SizedBox(width: MediaQuery.of(context).size.width/14,),
                                      Column(
                                         children: [
                                          Text('48',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),),
                                  
                                          Text('followers',
                                          style: TextStyle(
                                            
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),),
                                        ],
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width/14,),
                                      Column(
                                         children: [
                                          Text('83',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),),
                                  
                                          Text('following',
                                          style: TextStyle(
                                            
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left:14,right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(                
                        padding: EdgeInsets.all(8),
                        width:  160,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade900,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/threads.png',
                            height: 17,),
                            Text('syed._.saroosh._.ali',
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                           ),)
                          ],
                        )
                      ),
                      SizedBox(height: 5,),
                      Text('Nyctophile ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14
                      ),),
                       SizedBox(height: 3,),
                      Text('Karachi, Pakistan 🇵🇰',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14
                      ),),
                  
                      Text('🇵🇸',
                      style: TextStyle(
                        color: Colors.white
                      ),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Container(                
                        padding: EdgeInsets.all(8),
                        width:  MediaQuery.of(context).size.width/2.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade900,
                        ),
                        child: Center(
                          child: Text('Edit profile',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold                       ),),
                        )
                      ),
                      Container(                
                        padding: EdgeInsets.all(8),
                        width:  MediaQuery.of(context).size.width/2.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade900,
                        ),
                        child: Center(
                          child: Text('Share profile',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,                       ),),
                        )
                      ),
                      Container(                
                        padding: EdgeInsets.all(8),
                  
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade900,
                        ),
                        child: Center(
                          child: Icon(Icons.person_add_outlined,
                          color: Colors.white,
                          size: 20,
                          )
                        )
                      ),
                        ],
                      ),
                      SizedBox(height: 20,),
                       Row(
                         children: [
                           Column(
                             children: [
                               Container(
                                  height: 82,
                                  width: 82,
                                  decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.grey.shade800
                                     ),
                                 child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Container(
                                          decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.black
                                                      ),
                                                  child: Padding(
                                                  padding: const EdgeInsets.all(3),
                                                  child: Container(
                                                  decoration: BoxDecoration(
                                                  shape: BoxShape.circle
                                                  ),
                                                 child: ClipRRect(
                                                 borderRadius: BorderRadius.circular(40),
                                                 child: Image.asset('assets/profile.jpg', 
                                                 fit: BoxFit.fill,),
                                                ),
                                              ),
                                                          
                                             ),))),
                                                              SizedBox(height: 8,),
                                                              Text('Yo !',
                                                              style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 13
                                                              ),),
                             ],
                           ),
                           SizedBox(width: 20,),
                            Column(
                             children: [
                               Container(
                                  height: 82,
                                  width: 82,
                                  decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.black,
                                     border: Border.all(
                                      color: Colors.white,
                                      width: 1.5)
                                     ),
                                 child: Icon(Icons.add,color: Colors.white,size: 30,),),
                                    SizedBox(height: 8,),
                                    Text('New',
                                     style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 13
                                     ),),
                             ],
                           ),
                         ],
                       )
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                TabBar(
                  unselectedLabelColor: Colors.grey.shade900,
                  indicatorColor: Colors.grey.shade500,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.grey.shade900,
                  tabs: [
                  Tab(icon: Icon(Icons.grid_on_rounded,color: Colors.white,),),
                  Tab(icon: Icon(Icons.person_pin_rounded,color: Colors.white,),)
                ]),
                // Expanded(
                //   child: GridView.builder(
                //     itemCount: 5,
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3), 
                //     itemBuilder: (context,index){
                //       return Container(
                //         margin: EdgeInsets.all(1),
                //         color: Colors.blue,
                //         child: ,
                //       );
                //     }),
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  child: TabBarView(children: [
                     GridView.builder(
                       itemCount: 5,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3), 
                       itemBuilder: (context,index){
                         return GestureDetector(
                           onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> PostScreen()));
                          },
                           child: Container(
                             margin: EdgeInsets.all(1),
                             color: Colors.black,
                             child: Image.asset('assets/profile.jpg'),
                           ),
                         );
                       }),
                        GridView.builder(
                       itemCount: 2,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3), 
                       itemBuilder: (context,index){
                         return Container(
                           margin: EdgeInsets.all(1),
                           color: Colors.black,
                           child: Image.asset(userItems[index].postImage),
                         );
                       }),
                  ]),
                ),
            
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}