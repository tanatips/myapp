import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/generate_qrcode_body.dart';
class GenerateQrcodeScreen extends StatefulWidget {
  const GenerateQrcodeScreen({ Key? key }) : super(key: key);

  @override
  _GenerateQrcodeScreenState createState() => _GenerateQrcodeScreenState();
}

class _GenerateQrcodeScreenState extends State<GenerateQrcodeScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text(kGenQrcode),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: GenerateQrcodeBody(),
    );
  }
}