import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({ Key? key }) : super(key: key);

  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text(kGridView),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}