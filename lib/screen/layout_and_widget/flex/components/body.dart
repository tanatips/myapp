import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(children: [
        Flexible(
          flex: 5, 
          child: Container(
            color: Colors.cyan,
          ),
        ),
        Flexible(
          flex: 3, 
          child: Container(
            color: Colors.teal,
          ),
        ),
        Flexible(
          flex: 2, 
          
          child: Container(
            color: Colors.indigo,
          ),
        )
      ],),
    );
  }
}