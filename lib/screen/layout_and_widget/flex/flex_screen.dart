import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../../constanct.dart';

class FlexScreen extends StatefulWidget {
  const FlexScreen({ Key? key }) : super(key: key);

  @override
  _FlexScreenState createState() => _FlexScreenState();
}

class _FlexScreenState extends State<FlexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(kFlex),centerTitle: true,backgroundColor: kPrimaryColor,),
       body: Body(),
    );
  }
}