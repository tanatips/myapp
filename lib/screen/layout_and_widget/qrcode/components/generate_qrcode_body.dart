import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrcodeBody extends StatefulWidget {
  const GenerateQrcodeBody({ Key? key }) : super(key: key);

  @override
  _GenerateQrcodeBodyState createState() => _GenerateQrcodeBodyState();
}

class _GenerateQrcodeBodyState extends State<GenerateQrcodeBody> {
  var txtData = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: txtData,
              decoration: InputDecoration( 
                hintText: "กรุณากรอกข้อมูล"
              ),
              onChanged: (value){
                setState(() {
                  
                });
              },
            ),
          ),
          // QrImage(
          //   data: txtData.text,
          //   version: QrVersions.auto,
          //   size: 200.0,
          // ),
        ],
      ),
    );
  }
}