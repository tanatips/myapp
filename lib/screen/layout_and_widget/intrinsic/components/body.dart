import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  
    // IntrinsicHeight(
    //   child: IntrinsicWidth(
    //     child: 
        Container(
          color: Colors.blue,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 150,
                height: 100,
                color: Colors.teal,
              ),
              // Expanded(
              //   child: 
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
            //  ),
            ],
          ),
      //   ),
      // ),
    );
  }
}
