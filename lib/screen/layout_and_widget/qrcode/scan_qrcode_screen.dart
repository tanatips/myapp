import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/scan_qrcode_body.dart';

class ScanQrcodeScreen extends StatefulWidget {
  const ScanQrcodeScreen({ Key? key }) : super(key: key);

  @override
  _ScanQrcodeScreenState createState() => _ScanQrcodeScreenState();
}

class _ScanQrcodeScreenState extends State<ScanQrcodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kScanQrcode),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: ScanQrcodeBody(),
    );
  }
}