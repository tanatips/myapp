import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({ Key? key }) : super(key: key);

  @override
  _NavigatorScreenState createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text(kNavigator),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}