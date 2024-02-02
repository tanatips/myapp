import 'package:flutter/material.dart';
class BodyDetail extends StatefulWidget {
  final picture;
  final tag;
  const BodyDetail({ Key? key, this.picture, this.tag }) : super(key: key);

  @override
  _BodyDetailState createState() => _BodyDetailState();
}

class _BodyDetailState extends State<BodyDetail> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Hero(tag:widget.tag,child: Image.asset(widget.picture)),
      ),
    );
  }
}