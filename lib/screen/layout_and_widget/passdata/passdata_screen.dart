import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class PassDataScreen extends StatefulWidget {
  const PassDataScreen({ Key? key }) : super(key: key);

  @override
  _PassDataScreenState createState() => _PassDataScreenState();
}

class _PassDataScreenState extends State<PassDataScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text(kPassData),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}