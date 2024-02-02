import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class RowsColumnsScreen extends StatelessWidget {
  const RowsColumnsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text(kRowsColumns),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}