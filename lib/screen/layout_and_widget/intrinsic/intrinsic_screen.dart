import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class IntrinsicScreen extends StatefulWidget {
  const IntrinsicScreen({ Key? key }) : super(key: key);

  @override
  _IntrinsicScreenState createState() => _IntrinsicScreenState();
}

class _IntrinsicScreenState extends State<IntrinsicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(kIntrinsic),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}