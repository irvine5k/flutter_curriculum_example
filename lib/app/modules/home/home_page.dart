import 'package:flutter/material.dart';
import 'package:flutter_curriculum/app/modules/home/resources/strings.dart';
import 'package:flutter_curriculum/app/modules/home/widgets/animated_opacity_widget.dart';
import 'package:flutter_curriculum/app/modules/home/widgets/message_bubble_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: AnimatedOpacityWidget(
          widget: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[800].withOpacity(0.8),
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),
              SizedBox(width: 10),
              Text('Kelven Galvão')
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: MessagesStrings().strings.length,
        itemBuilder: (context, index) {
          return AnimatedOpacityWidget(
            widget: MessageBubble(
              sender: "Kelven Galvão",
              text: MessagesStrings().strings[index],
              isCurrentUser: true,
            ),
          );
        },
      ),
    );
  }
}
