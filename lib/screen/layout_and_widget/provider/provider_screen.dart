import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screen/layout_and_widget/provider/components/second_body.dart';
import 'package:provider/provider.dart';
import 'components/body.dart';
import 'components/counter.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return  Body();

  }
}