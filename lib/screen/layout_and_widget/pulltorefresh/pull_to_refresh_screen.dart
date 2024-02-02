import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class PullToRefreshScreen extends StatefulWidget {
  const PullToRefreshScreen({ Key? key }) : super(key: key);

  @override
  _PullToRefreshScreenState createState() => _PullToRefreshScreenState();
}

class _PullToRefreshScreenState extends State<PullToRefreshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kPullToRefresh),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}