import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
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
        title: Row(
          children: [
            Text('naknak8683'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        actions: [IconButton(icon: Icon(Icons.edit), onPressed: () {})],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1302423818409975809/evBuVQa9_400x400.jpg'),
            ),
            title: Text('Your note'),
            onTap: () {},
          ),
          Divider(),
          _sectionTitle('Messages'),
          _chatTile('ROSE', 'Active 5h ago', 'https://www.nme.com/wp-content/uploads/2024/11/blackpink-rose-k-pop-fan-culture-trained-perfect-interview.jpg'),
          _chatTile('JuJu', 'Sent', 'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg'),
          Divider(),
          _sectionTitle('Suggestions'),
          _chatTile('LISA', 'Tap to chat', 'https://media.femalemag.com.sg/public/2019/03/51021013_237686723851021_5419594866899599564_n-cc-768x960.jpg?compress=true&quality=80&w=480&dpr=2.6'),
          _chatTile('SVETA GÁLKA | MODEL', 'Tap to chat', 'https://www.example.com/profile5.jpg'),
          _chatTile('Heng Puthika', 'Tap to chat', 'https://www.example.com/profile6.jpg'),
          _chatTile('NAKIIKO', 'Tap to chat', 'https://www.example.com/profile7.jpg'),

        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _chatTile(String name, String subtitle, String imageUrl) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name),
      subtitle: Text(subtitle),
      onTap: () {},
    );
  }
}
