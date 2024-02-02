import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class ImagesScreen extends StatelessWidget {
  const ImagesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBar(title: Text(kImages),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}