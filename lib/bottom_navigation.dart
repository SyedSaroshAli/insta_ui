import 'package:flutter/material.dart';
import 'package:instagram_ui/explore_screen.dart';
import 'package:instagram_ui/home_screen.dart';
import 'package:instagram_ui/profile_screen.dart';
import 'package:instagram_ui/reels_screen.dart';
import 'package:instagram_ui/search_screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  List pages = [];
  int currentIndex= 0;
  bool home= true;
  bool search = false;
  bool addPost = false;
  bool reels=false; 
  bool profile = false;
  @override
  void initState() {
   
    pages = [HomeScreen(),ExploreScreen(),ReelsScreen(),SearchScreen(),ProfilePage()];
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
 
      onTap: (value) {
        print(value);
         setState(() {
           currentIndex=value; 
           
            home = currentIndex == 0;
            search = currentIndex == 1;
            addPost = currentIndex == 2;
            reels = currentIndex == 3;
            profile = currentIndex == 4;
         });
      },
      
      backgroundColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items:[
        BottomNavigationBarItem(icon: home?
        Image.asset('assets/home_filled.png',height: 23,):Image.asset('assets/home_outlined.png',height: 23,),label: ""),
        BottomNavigationBarItem(icon: Image.asset('assets/search.png',height: 23,),label: ""),
        BottomNavigationBarItem(icon: Image.asset('assets/add_post.png',height: 26,),label: ""),
         BottomNavigationBarItem(icon: Image.asset('assets/reels.png',height: 26,),label: ""),
         BottomNavigationBarItem(icon: CircleAvatar(radius: 14,backgroundImage:AssetImage('assets/profile.jpg')),label: "")
        ]
    ),
    body: pages[currentIndex],
    // ); BottomNavigationBar(
    //   onTap: (value) {
    //     Navigator.push(context, MaterialPageRoute(builder: (context)=> pages[value]));
    //   },
    //   currentIndex: 0,
    //   backgroundColor: Colors.black,
    //   showSelectedLabels: false,
    //   showUnselectedLabels: false,
    //   type: BottomNavigationBarType.fixed,
    //   items:[
    //     const BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 33,color: Colors.white,),label: ""),
    //     BottomNavigationBarItem(icon: Image.asset('assets/search.png',height: 27,),label: ""),
    //     BottomNavigationBarItem(icon: Image.asset('assets/add_post.png',height: 27,),label: ""),
    //      BottomNavigationBarItem(icon: Image.asset('assets/reels.png',height: 27,),label: ""),
    //      BottomNavigationBarItem(icon: CircleAvatar(radius: 16,backgroundImage:AssetImage('assets/profile.jpg')),label: "")
    //     ]
    ); 
  }
}