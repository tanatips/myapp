import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class ScrollbarableScreen extends StatefulWidget {
  const ScrollbarableScreen({ Key? key }) : super(key: key);

  @override
  _ScrollbarableScreenState createState() => _ScrollbarableScreenState();
}

class _ScrollbarableScreenState extends State<ScrollbarableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kScrolbarable),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}