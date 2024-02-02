import 'package:flutter/material.dart';
import '../../../constanct.dart';
import 'components/body.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({ Key? key }) : super(key: key);

  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kButton),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        actions: [
          PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("First"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Second"),
                    value: 2,
                  )
                ]
            )
        ],
        ),
      
      body: Body(),
    );
  }
}