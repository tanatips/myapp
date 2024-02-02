import 'package:flutter/material.dart';
import 'package:myapp/constanct.dart';
import 'package:myapp/screen/layout_and_widget/stack/components/body.dart';

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
        child: Column(
          children: [
            Row1(),
            Row2()
          ],
        ),
    );
  }
}

class Row1 extends StatelessWidget {
  const Row1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
       Container(
         width: 50,
          height: 50,
         color: Colors.cyan,
       ),
       Container(
           width: 50,
           height: 50,
           color: Colors.teal,
           alignment: Alignment.center,
       ), 
       Container(
         width: 50,
          height: 50,
         color: Colors.indigo,
       )
      
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  const Row2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
       Container(
         width: 50,
          height: 50,
         color: Colors.cyan,
       ),
       Expanded(
         child: 
         Container(
           width: 50,
           height: 50,
           color: Colors.teal,
           alignment: Alignment.center,
           child: Text("Expanded",
           textAlign: TextAlign.center,
            style:TextStyle(
              color: Colors.white,fontSize: kPrimaryFontSize,

              backgroundColor: Colors.green
            )),
         ),
       ),
       Container(
         width: 50,
          height: 50,
         color: Colors.indigo,
       )
      
      ],
    );
  }
}