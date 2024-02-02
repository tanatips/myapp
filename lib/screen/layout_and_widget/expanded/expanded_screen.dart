import 'package:flutter/material.dart';
import 'package:myapp/constanct.dart';
import 'package:myapp/screen/layout_and_widget/expanded/components/body.dart';
class ExpandedScreen extends StatefulWidget {
  const ExpandedScreen({ Key? key }) : super(key: key);

  @override
  _ExpandedScreenState createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(kExpanded),centerTitle: true,backgroundColor: kPrimaryColor,),
       body: Body(),
    );
  }
}