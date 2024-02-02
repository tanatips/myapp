import 'package:flutter/material.dart';
import 'package:myapp/constanct.dart';

import 'components/body.dart';
class LifeScreen extends StatefulWidget {
  const LifeScreen({ Key? key }) : super(key: key);

  @override
  _LifeScreenState createState() => _LifeScreenState();
}

class _LifeScreenState extends State<LifeScreen> {

  // @override
  // void initState() {
  //   super.initState();
    
  //   print("initial State");
  //   print("mouseted:"+super.mounted.toString());
  // }
  
  // @override
  // void deactivate() {
  //   super.deactivate();
  //   print("deactivate");
  //   print("mouseted:"+super.mounted.toString());
  // }
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   print("didChangeDependencies");
  //   print("mouseted:"+super.mounted.toString());
  // }
  // @override
  // void dispose() {
  //   super.dispose();
  //   print("dispose");
  //   print("mouseted:"+super.mounted.toString());
  // }
  // @override
  // void didUpdateWidget(covariant LifeScreen oldWidget) {
  //    super.didUpdateWidget(oldWidget);
  //    print("didChangeDependencies");
  //    print("mouseted:"+super.mounted.toString());
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kLifeCycle),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}