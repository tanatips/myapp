import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class YoutubePlayerScreen extends StatefulWidget {
  const YoutubePlayerScreen({ Key? key }) : super(key: key);

  @override
  _YoutubePlayerScreenState createState() => _YoutubePlayerScreenState();
}

class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kYoutubePlayer),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}