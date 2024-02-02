import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class TabbarScreeen extends StatefulWidget {
  const TabbarScreeen({ Key? key }) : super(key: key);

  @override
  _TabbarScreeenState createState() => _TabbarScreeenState();
}

class _TabbarScreeenState extends State<TabbarScreeen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text(kTabbar),centerTitle: true,backgroundColor: kPrimaryColor,
        bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],)
      
      ),
        body: Body()
      )
    );
  }
}