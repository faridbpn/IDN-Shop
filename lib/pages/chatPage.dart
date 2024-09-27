import 'package:flutter/material.dart';
import 'package:skl_pertama_for_real/pages/chatPageDetail.dart';

class ChatPage extends StatelessWidget {
  final List<Chat> chats = [
    Chat(
      username: 'John Doe',
      lastMessage: 'Hello, how are you?',
      time: '10:30 AM',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'Jane Smith',
      lastMessage: 'I\'ll call you later.',
      time: '09:45 AM',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'Mark Taylor',
      lastMessage: 'Let\'s meet tomorrow.',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'mas ridwan',
      lastMessage: 'Let\'s meet today.',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'Mark anis',
      lastMessage: 'aku jadi ultramen ciks.',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'agus',
      lastMessage: 'gsap terbaik',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'eko',
      lastMessage: 'jangan lupa kopi kemaren bos',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'dimas',
      lastMessage: 'Let\'s meet tomorrow.',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'syahril',
      lastMessage: 'Let\'s meet tomorrow.',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'cah pagak',
      lastMessage: 'Let\'s meet tomorrow.',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'pak suryono',
      lastMessage: 'Let\'s meet tomorrow.',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    Chat(
      username: 'Mark Taylor',
      lastMessage: 'Let\'s meet tomorrow.',
      time: 'Yesterday',
      profileImage: 'images/pedro.gif',
    ),
    // Add more data here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat List',
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        backgroundColor: const Color(0xFF4C53A5),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(chat.profileImage),
                    radius: 25,
                  ),
                  title: Text(
                    chat.username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    chat.lastMessage,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    chat.time,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailChatPage(
                          userName: 'John Doe',
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                bottom: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'homePage');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4C53A5),
                padding: const EdgeInsets.all(15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text(
                'Muleh',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Chat {
  final String username;
  final String lastMessage;
  final String time;
  final String profileImage;

  Chat({
    required this.username,
    required this.lastMessage,
    required this.time,
    required this.profileImage,
  });
}
