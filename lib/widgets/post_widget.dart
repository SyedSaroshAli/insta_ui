import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final index,image,post,likes,userName,commentNumber,postTime,postImage,bio;
  const PostWidget({super.key, this.index, this.image, this.post, this.likes, this.userName, this.commentNumber, this.postTime, this.postImage, this.bio});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(image),
                  ),
                  const SizedBox(width: 6,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                      ),),
                      Text('Suggested for you',
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize:12
                      ),)
                    ],
                  ),
                
              
                ],
              ),

                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                          child: Text('Follow',
                          style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      SizedBox(width: 12,),
                      Icon(Icons.more_vert_rounded,
                      color: Colors.white,)
                    ],
                  )
            ],
            ),
          ),
          SizedBox(height: 15,),
          Image.asset(postImage,
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                  
                      children: [
                         Image.asset('assets/heart.png',height: 23,
                         fit: BoxFit.cover,),
                         SizedBox(width: MediaQuery.of(context).size.width/25),
                         Image.asset('assets/comment.png',height: 23,fit: BoxFit.cover),
                         SizedBox(width: MediaQuery.of(context).size.width/25,),
                         Image.asset('assets/send.png',height: 23,fit: BoxFit.cover),
                      ],
                    ),
                
                    Image.asset('assets/bookmark.png',height: 23,fit: BoxFit.cover)
                   
                  ],
                ),
                SizedBox(height: 10,),
                Text('$likes likes',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$userName',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 4,),
                      
                      Text(postTime,
                      style: TextStyle(
                        color: Colors.grey.shade600
                      ),),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Text(bio,
                        
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Text('View all ${commentNumber.toString()} comments',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),)
              ],
            ),

          ),
          SizedBox(height: 20,)

        ],
      ),
    );
  }
}