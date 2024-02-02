import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class FutureBuilderScreen extends StatefulWidget {
  const FutureBuilderScreen({ Key? key }) : super(key: key);

  @override
  _FutureBuilderScreenState createState() => _FutureBuilderScreenState();
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kFutureBuilder),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}