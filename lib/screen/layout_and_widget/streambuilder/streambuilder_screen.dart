import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class StreamBuilderScreen extends StatefulWidget {
  const StreamBuilderScreen({ Key? key }) : super(key: key);

  @override
  _StreamBuilderScreenState createState() => _StreamBuilderScreenState();
}

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kStreamBuilder),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}