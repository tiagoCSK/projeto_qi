import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ChatMessage {
  final String text;
  final bool isSentByUser;

  ChatMessage({required this.text, required this.isSentByUser});
}

String pesquisa = '';
TextEditingController controlador = TextEditingController();
List<ChatMessage> messages = []; 

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          color: Colors.blue,
          height: 75.0,
          width: 411.0,
          child: Text(pesquisa, style: const TextStyle(fontSize: 50))),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {},
          iconSize: 45.0,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              clearChat();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true, 
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Row(
                  mainAxisAlignment: message.isSentByUser
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 4.0,
                        left: message.isSentByUser ? 0.0 : 8.0,
                        right: message.isSentByUser ? 8.0 : 0.0,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: message.isSentByUser
                            ? const AssetImage('assets/user_profile.jpg')
                            : const AssetImage('assets/attendant_profile.jpg'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      padding: const EdgeInsets.all(8.0),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.5,
                      ),
                      decoration: BoxDecoration(
                        color: message.isSentByUser
                            ? Colors.blue.shade50
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        message.text,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controlador,
                    decoration: const InputDecoration(
                      hintText: 'Digite sua mensagem...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    sendMessage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  
  void sendMessage() {
    String messageText = controlador.text;
    if (messageText.isNotEmpty) {
      messages.insert(0, ChatMessage(text: messageText, isSentByUser: true)); 
      controlador.clear();
      
      messages.insert(0, ChatMessage(
          text: 'Obrigado por entrar em contato. Em que posso ajudar?',
          isSentByUser: false));
    }
  }

  
  void clearChat() {
    messages.clear();
  }
}

