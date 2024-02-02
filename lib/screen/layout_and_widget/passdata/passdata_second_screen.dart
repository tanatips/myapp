import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/second_body.dart';
class PassdataSecondScreen extends StatefulWidget {
  const PassdataSecondScreen({ Key? key, this.data }) : super(key: key);
  final String? data;
  @override
  _PassdataSecondScreenState createState() => _PassdataSecondScreenState();
}

class _PassdataSecondScreenState extends State<PassdataSecondScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text(kSecondScreen),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: SecondBody(data: widget.data,),
    );
  }
}