import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class LinearProgressIndicatorScreen extends StatefulWidget {
  const LinearProgressIndicatorScreen({ Key? key }) : super(key: key);

  @override
  State<LinearProgressIndicatorScreen> createState() => _LinearProgressIndicatorScreenState();
}

class _LinearProgressIndicatorScreenState extends State<LinearProgressIndicatorScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kLinearProgressIndicator),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}