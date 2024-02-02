import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class FormAndInputScreen extends StatefulWidget {
  const FormAndInputScreen({ Key? key }) : super(key: key);

  @override
  _FormAndInputScreenState createState() => _FormAndInputScreenState();
}

class _FormAndInputScreenState extends State<FormAndInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kFormAndInput),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}