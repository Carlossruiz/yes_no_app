import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          
          decoration: BoxDecoration(
           color: colors.primary, borderRadius: BorderRadius.circular(20)
          ),
        
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Claro que si bicho 😍', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10),

        _ImageBubble()

      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network("https://yesno.wtf/assets/yes/13-c3082a998e7758be8e582276f35d1336.gif"));
  }
}