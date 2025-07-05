import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/views/message/chat_screen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "Chats",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          ChatTile(
            name: "Kari Rasmussen",
            message: "Thanks",
            time: "15:23",
            unreadCount: 2,
            imageUrl: "assets/boyone.png",
          ),
          ChatTile(
            name: "Anita Cruz",
            message: "Hello",
            time: "Yesterday",
            unreadCount: 0,
            imageUrl: "assets/boytwo.png",
          ),
          ChatTile(
            name: "Lucy Bond",
            message: "How much does it cost?",
            time: "11/10/2021",
            unreadCount: 0,
            isRead: true,
            imageUrl: "assets/girl.png",
          ),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final bool isRead;
  final String imageUrl;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.unreadCount,
    this.isRead = false,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(name: name, imageUrl: imageUrl),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(color: AppColors.white),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage(imageUrl),
          ),
          title: Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
          ),
          subtitle: Text(
            message,
            style: TextStyle(fontSize: 14, color: AppColors.grey),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(time, style: TextStyle(color: AppColors.grey, fontSize: 12)),
              if (unreadCount > 0)
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AppColors.pinksh,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    unreadCount.toString(),
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              if (isRead) Icon(Icons.done_all, color: AppColors.blue, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
