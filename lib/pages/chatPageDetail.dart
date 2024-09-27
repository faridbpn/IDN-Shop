import 'package:flutter/material.dart';

class DetailChatPage extends StatefulWidget {
  final String userName; // Nama user lawan bicara

  const DetailChatPage({Key? key, required this.userName}) : super(key: key);

  @override
  _DetailChatPageState createState() => _DetailChatPageState();
}

class _DetailChatPageState extends State<DetailChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  // List untuk menyimpan pesan
  final List<Map<String, dynamic>> _messages = [];

  @override
  void initState() {
    super.initState();
    // Menambahkan pesan awal
    _messages.addAll([
      {'text': 'Halo, ada yang bisa saya bantu?', 'isCurrentUser': false},
      {'text': 'Hai! Saya ingin tahu lebih banyak tentang produk Anda.', 'isCurrentUser': true},
      {'text': 'Tentu! Apa yang ingin Anda ketahui?', 'isCurrentUser': false},
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userName), // Menampilkan nama user di app bar
        backgroundColor: Color(0xFF4C53A5),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[_messages.length - 1 - index];
                return _buildMessageTile(
                  message['text'], 
                  isCurrentUser: message['isCurrentUser']
                );
              },
            ),
          ),
          _buildMessageComposer(),
        ],
      ),
    );
  }

  Widget _buildMessageTile(String message, {required bool isCurrentUser}) {
    final alignment = isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final color = isCurrentUser ? Colors.blue[200] : Colors.grey[300];
    final borderRadius = isCurrentUser
        ? const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          )
        : const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          );

    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
            ),
            child: Text(
              message,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration.collapsed(
                hintText: "Type your message...",
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Color(0xFF4C53A5)),
            onPressed: _sendMessage,
          ),
        ],
      ),
    );
  }

  // Fungsi untuk mengirim pesan
  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add({
          'text': _messageController.text,
          'isCurrentUser': true,
        });
      });
      _messageController.clear();
      _scrollToBottom();
    }
  }

  // Fungsi untuk scroll ke pesan paling bawah
  void _scrollToBottom() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}

void main() => runApp(MaterialApp(
  home: DetailChatPage(userName: 'Dyraft'),
));
