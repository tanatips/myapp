import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({ Key? key }) : super(key: key);

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kAnimation),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body() ,
    );
  }
}