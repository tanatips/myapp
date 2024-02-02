import 'package:flutter/material.dart';


import '../../../constanct.dart';
import 'components/body.dart';
class ChartScreen extends StatefulWidget {
  const ChartScreen({ Key? key }) : super(key: key);

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kChart),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body() ,
    );
  }
}