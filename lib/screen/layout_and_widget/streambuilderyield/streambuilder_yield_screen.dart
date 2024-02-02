import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class StreamBuilderYieldScreen extends StatelessWidget {
  const StreamBuilderYieldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kStreamBuilderYield),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}