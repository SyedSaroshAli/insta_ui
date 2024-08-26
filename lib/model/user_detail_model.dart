class UserDetail {
  String id;
  String image;
  String name;
  String username;
  int post;
  int followers;
  int following;
  int likes;
  String comment;
  String address;
  int commentNumber;
  String postTime;
  String postImage; 

  UserDetail({
    required this.id,
    required this.image,
    required this.name,
    required this.username,
    required this.post,
    required this.followers,
    required this.following,
    required this.likes,
    required this.comment,
    required this.commentNumber,
    required this.address,
    required this.postTime,
    required this.postImage,
  });
}

List<UserDetail> userItems = [
  UserDetail(
      id: '1',
      image: 'assets/dp_2.jpeg',
      name: 'David Werner',
      post: 25,
      username: "davidwerner22",
      followers: 7850,
      following: 100,
      likes: 50,
      comment: "Darkness",
      address: 'Fashion-Designer, London UK',
      commentNumber: 20, postTime: '2h •', 
      postImage: 'assets/dp_2.jpeg'),
      
  UserDetail(
      id: '2',
      image: "assets/dp_4.jpg",
      name: 'Aron',
      username: "aron232",
      post: 245,
      followers: 750,
      following: 715,
      likes: 29,
      comment: "What's up?",
      address: 'Designer,US',
      commentNumber: 10, postTime: '1w •', 
      postImage: 'assets/dp_4.jpg'),
  UserDetail(
      id: '3',
      image: "assets/dp_3.jpeg",
      name: 'Jana Henderson',
      post: 245,
      username: "jana_henderson22",
      followers: 850,
      following: 1,
      likes: 2234,
      comment: "In heaven",
      address: 'Programmer,Nepal',
      commentNumber: 40, postTime: '5h •', 
      postImage: 'assets/dp_3.jpeg'),
  UserDetail(
      id: '4',
      image: "assets/cristiano_dp.jpg",
      name: 'Mis Beauty',
      post: 245,
      username: "cristiano",
      followers: 7850,
      following: 230,
      likes: 8783,
      comment: "My life.",
      address: 'Flutter Devloper,Canada',
      commentNumber: 70, postTime: '1d •', 
      postImage: 'assets/cristiano_dp.jpg'),
  
];