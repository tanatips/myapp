import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class ChipScreen extends StatelessWidget {
  const ChipScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text(kChip),centerTitle: true,backgroundColor: kPrimaryColor,),
       body: Body(),
    );
  }
}