import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class StepperScreen extends StatelessWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text(kStepper),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}