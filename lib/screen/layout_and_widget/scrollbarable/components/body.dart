import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final items = List<String>.generate(500, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return 
    Scrollbar(
      // isAlwaysShown: true,
      child: 
      ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
      ),
    );
  }
}