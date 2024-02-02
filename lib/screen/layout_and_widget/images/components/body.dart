import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network("https://upload.wikimedia.org/wikipedia/en/e/ef/Spider-Man_actors.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/iron-man.jpeg"),
        )
      ],),
    );
  }
}