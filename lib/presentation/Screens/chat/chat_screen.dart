import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/Screens/chat/widget/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/Screens/chat/widget/chat/my_mesagge_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://ravelodeporte.es/wp-content/uploads/2020/04/Cristianovirus-300x225.jpg")),
            
        ),
        title: const Text('Cristiano Ronaldo(El bicho) ❤'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                return (index % 2 == 0)
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
              },)
              ),


            const Text('mundo')
          ],
        ),
        ));
  }
}
