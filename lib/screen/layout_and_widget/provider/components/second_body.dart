import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/screen/layout_and_widget/provider/components/counter.dart';


import '../../../../constanct.dart';
class SecondBody extends StatelessWidget {
  const SecondBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  
        Scaffold(
           appBar: AppBar(title: Text("Second"),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Center(
        child: Text(
            /// Calls `context.watch` to make [Count] rebuild when [Counter] changes.
            '${context.watch<Counter>().count}',
            
            key: const Key('counterState2'),
            style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}