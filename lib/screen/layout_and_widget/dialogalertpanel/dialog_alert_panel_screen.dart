import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';

class DialogAlertPanelScreen extends StatelessWidget {
  const DialogAlertPanelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(kDialogAlertPanel),centerTitle: true,backgroundColor: kPrimaryColor,),
       body: Body(),
    );
  }
}