import 'package:flutter/material.dart';
import 'package:myapp/constanct.dart';
import 'components/body.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({ Key? key }) : super(key: key);

  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kStack),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}