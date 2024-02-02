import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: size.width,
      child: Column(
        children: [
        // spaceEvenly
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
            alignment: Alignment.center,
            child: Text("Row 1 Container 1"),
            color: Colors.blue,
            width: size.width*0.1,
            height: size.height*0.1,
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Row 1 Container 2"),
            color: Colors.yellow,
            width: size.width*0.1,
            height: size.height*0.1,
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Row 1 Container 3"),
            color: Colors.yellow,
            width: size.width*0.1,
            height: size.height*0.1,
          )
        ],),
        // spaceAround
        Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            alignment: Alignment.center,
            child: Text("Row 2 Container 1"),
            color: Colors.grey,
            width: size.width*0.1,
            height: size.height*0.1,
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Row 2 Container 2"),
            color: Colors.pink,
            width: size.width*0.1,
            height: size.height*0.1,
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Row 2 Container 3"),
            color: Colors.pink,
            width: size.width*0.1,
            height: size.height*0.1,
          )
        ],),
        // spaceBetween
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            alignment: Alignment.center,
            child: Text("Row 2 Container 1"),
            color: Colors.grey,
            width: size.width*0.1,
            height: size.height*0.1,
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Row 2 Container 2"),
            color: Colors.pink,
            width: size.width*0.1,
            height: size.height*0.1,
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Row 2 Container 3"),
            color: Colors.pink,
            width: size.width*0.1,
            height: size.height*0.1,
          )
        ],)
      ],),
    );
  }
}