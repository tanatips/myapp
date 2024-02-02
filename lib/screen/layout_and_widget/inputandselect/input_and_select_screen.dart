import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class InputAndSelectScreen extends StatelessWidget {
  const InputAndSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(kInputAndSelect),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}