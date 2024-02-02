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
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height*0.02,
          ),
          MyCard()
        ],
      ),
    );
  }
}
class MyCard extends StatelessWidget {
  const MyCard({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.75,
      height: size.height*0.2,
      child: Card(
        
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Test card"),
          ),
        ),
      ),
    );
  }
}
