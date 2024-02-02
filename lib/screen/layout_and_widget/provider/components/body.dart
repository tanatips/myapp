import 'package:flutter/material.dart';
import 'package:myapp/screen/layout_and_widget/provider/components/count.dart';
import 'package:myapp/screen/layout_and_widget/provider/components/second_body.dart';
import 'package:provider/provider.dart';

import '../../../../constanct.dart';
import '../second_screen.dart';
import 'counter.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>
    (builder:(context, value, child) =>
        Scaffold(
    appBar: AppBar(title: Text(kProvider+'(${context.watch<Counter>().count})'),centerTitle: true,backgroundColor: kPrimaryColor,),
    body: 
     Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  <Widget>[
          Text('You have pushed the button this many times:'),
          ElevatedButton(
            onPressed: (){
               Navigator.of(context).pushNamed("/second");
            },
              child: Text("Second Screen")
          ),
          Count(),
        ],
      ),
    ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
          key: const Key('increment_floatingActionButton2'),

          /// Calls `context.read` instead of `context.watch` so that it does not rebuild
          /// when [Counter] changes.
          onPressed: () => context.read<Counter>().increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
          key: const Key('decrement_floatingActionButton2'),

          /// Calls `context.read` instead of `context.watch` so that it does not rebuild
          /// when [Counter] changes.
          onPressed: () => context.read<Counter>().decrement(),
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
          ),
        ],
      ),
     )
    );
  }
}

