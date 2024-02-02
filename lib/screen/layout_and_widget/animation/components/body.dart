import 'package:flutter/material.dart';
import 'package:myapp/screen/layout_and_widget/animation/animation_detail_screen.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width*0.4,
              child: GestureDetector(child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(tag: "0",child: Image.asset("assets/images/iron-man.jpeg")),
              ),
              onTap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context){return AnimationDetailScreen(tag:"0",picture:"assets/images/iron-man.jpeg");}));
              },),
            ),
            Container(
              width: size.width*0.4,
              child: GestureDetector(child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: "1",
                  child: Image.asset("assets/images/spider-man.jpg")),
              ),
              onTap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context){return AnimationDetailScreen(tag:"1",picture:"assets/images/spider-man.jpg");}));
              },
              ),
            ),
            Container(
              width: size.width*0.4,
              child: GestureDetector(child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: "2",
                  child: Image.asset("assets/images/venom.jpeg")
                ),
              ),
              onTap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context){return AnimationDetailScreen(tag:"2",picture:"assets/images/venom.jpeg");}));
              },
              ),
            )
          ],
        ),
      ),
    );
  }
}