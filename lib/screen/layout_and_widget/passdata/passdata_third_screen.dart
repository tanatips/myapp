import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/third_body.dart';
class PassdataThirdScreen extends StatefulWidget {
  const PassdataThirdScreen({ Key? key, this.data }) : super(key: key);
  final String? data;
  @override
  _PassdataThirdScreenState createState() => _PassdataThirdScreenState();
}

class _PassdataThirdScreenState extends State<PassdataThirdScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text(kThirdScreen),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: ThirdBody(data:widget.data),
    );
  }
}