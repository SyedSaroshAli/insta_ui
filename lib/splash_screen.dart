import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_ui/bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    Timer(Duration(seconds: 4), (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=> MyBottomNavigationBar()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/2.2,),
            Image.asset('assets/insta_logo.png',
            height: 80,),

           SizedBox(height:MediaQuery.of(context).size.height/3,),
           Text('from',
           style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 20
           ),),

           Image.asset('assets/meta_insta.png',
           height: 40,)
          ],),
      ),
    );
  }
}