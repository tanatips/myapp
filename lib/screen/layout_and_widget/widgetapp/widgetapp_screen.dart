import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class WidgetAppScreen extends StatelessWidget {
  const WidgetAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kWidgetApp),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}