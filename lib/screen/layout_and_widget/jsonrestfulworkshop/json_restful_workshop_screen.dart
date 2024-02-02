import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class JsonRestfullWorkShopScreen extends StatefulWidget {
  const JsonRestfullWorkShopScreen({ Key? key }) : super(key: key);

  @override
  _JsonRestfullWorkShopScreenState createState() => _JsonRestfullWorkShopScreenState();
}

class _JsonRestfullWorkShopScreenState extends State<JsonRestfullWorkShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kJsonRestFulWorkshop),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}