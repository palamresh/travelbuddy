import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Notification'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Clear all',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return NotificationTile(
            image: notification['image']!,
            title: notification['title']!,
            subtitle: notification['subtitle']!,
            time: notification['time']!,
            isRead: index == 0,
          );
        },
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String time;
  final bool isRead;

  const NotificationTile({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.time,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isRead ? const Color.fromARGB(255, 255, 255, 255) : null,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(image),
          radius: 27.0,
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(time),
      ),
    );
  }
}

final List<Map<String, String>> notifications = [
  {
    'image':
        'https://images.pexels.com/photos/922978/pexels-photo-922978.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'title': 'Super Offer',
    'subtitle': 'Get 60% off in our first booking',
    'time': 'Sun, 12:40pm',
  },
  {
    'image':
        'https://images.pexels.com/photos/1291766/pexels-photo-1291766.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'title': 'Super Offer',
    'subtitle': 'Get 60% off in our first booking',
    'time': 'Mon, 11:50pm',
  },
];
