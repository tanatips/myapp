import 'package:flutter/material.dart';
class ThirdBody extends StatefulWidget {
  const ThirdBody({ Key? key, this.data }) : super(key: key);
  final String? data;
  @override
  _ThirdBodyState createState() => _ThirdBodyState();
}

class _ThirdBodyState extends State<ThirdBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
              child: Text(widget.data!,style: TextStyle(fontSize: 40),),
            ),
    );
  }
}