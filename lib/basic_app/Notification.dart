import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          _buildSectionHeader('Today'),
          _buildNotificationItem('theclothesplus just shared a new reel.', '31m', 'https://pbs.twimg.com/profile_images/1302423818409975809/evBuVQa9_400x400.jpg'),
          _buildSectionHeader('Yesterday'),
          _buildNotificationItem('gm_school_lab recently shared a new reel.', '1d', 'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg'),
          _buildSectionHeader('Last 7 Days'),
          _buildNotificationItem('jining_store just shared a post.', '1d', 'https://example.com/image3.jpg'),
          _buildNotificationItem('theclothesplus just shared a new reel.', '2d', 'https://example.com/image4.jpg'),
          _buildNotificationItem('mouykeang_123 is on Instagram.', '3d', 'https://example.com/image5.jpg'),
          _buildNotificationItem('iamda_25 follows them.', '3d', 'https://example.com/image6.jpg'),
          _buildNotificationItem('olivia_jelly_ just shared a post.', '3d', 'https://example.com/image7.jpg'),
          _buildNotificationItem('theclothesplus just shared a new reel.', '4d', 'https://example.com/image8.jpg'),
          _buildNotificationItem('theclothesplus just shared a new reel.', '4d', 'https://example.com/image9.jpg'),
          _buildNotificationItem('theclothesplus just shared a new reel.', '5d', 'https://example.com/image10.jpg'),
          _buildNotificationItem('theclothesplus just shared a new reel.', '5d', 'https://example.com/image11.jpg'),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildNotificationItem(String text, String time, String imageUrl) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(text),
      subtitle: Text(time),
      trailing: Icon(Icons.more_vert),
    );
  }
}
