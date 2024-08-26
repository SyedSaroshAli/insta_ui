class ChatModel {
  String name, imagePath, time, message; 
  ChatModel({required this.name, required this.imagePath,required this.message, required this.time});
}

List <ChatModel> chatDetail = [
  ChatModel(
    name: 'Shahzaman', 
    imagePath: 'assets/shahzaman.jpeg',
    message: 'Shahzaman sent an attach..', 
    time: '18h'
    ),
  ChatModel(
    name: 'David Werner', 
    imagePath: 'assets/dp_2.jpeg',
    message: 'Seen', 
    time: '18h'
    ),
  ChatModel(
    name: 'Cristiano Ronaldo', 
    imagePath: 'assets/cristiano_dp.jpg', 
    message: 'How are You ?', 
    time: '1d'
  ),
  ChatModel(
    name: 'IShowSpeed', 
    imagePath: 'assets/speed.jpeg',
    message: 'I\'m not a fan of messi bruh', 
    time: '1d'
    ),
  ChatModel(
    name: 'Jana Henderson', 
    imagePath: 'assets/dp_3.jpeg', 
    message: 'You need to meet him', 
    time: '1d'
  ),
  ChatModel(
    name: 'Williams Marshall', 
    imagePath: 'assets/dp_1.jpeg', 
    message: 'Liked a message', 
    time: '2d'
  ),
  ChatModel(
    name: 'Aaron', 
    imagePath: 'assets/dp_4.jpg', 
    message: 'You sent an attachment.', 
    time: '2d'
  ),
 
  ChatModel(
    name: 'Elon Musk', 
    imagePath: 'assets/elon.jpg', 
    message: 'You good ?', 
    time: '3d'
  ),
  
];