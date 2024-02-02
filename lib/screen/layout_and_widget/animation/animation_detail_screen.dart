import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/bodydetail.dart';
class AnimationDetailScreen extends StatefulWidget {
  final picture;
  final tag;
  const AnimationDetailScreen({ Key? key, this.picture, this.tag, }) : super(key: key);

  @override
  _AnimationDetailScreenState createState() => _AnimationDetailScreenState();
}

class _AnimationDetailScreenState extends State<AnimationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kAnimation),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: BodyDetail(tag:widget.tag,picture:widget.picture) ,
    );
  }
}