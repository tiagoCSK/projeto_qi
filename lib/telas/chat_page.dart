import 'package:flutter/material.dart';
import 'package:repos/components/input_message.dart';
import 'package:repos/components/list_message.dart';
import 'package:repos/telas/controllers/chat_controller.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ChatController controller = ChatController();

  @override
  void initState() {
    controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat do Pub Dev'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListMessageView(
              messages: controller.messages,
            ),
          ),
          InputMessage(
            onSendMessage: controller.sendMessage,
          ),
        ],
      ),
    );
  }
}
