import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/couter_bloc.dart';
import 'components/couter_event.dart';

class BlocPatternScreen extends StatelessWidget {
  BlocPatternScreen({ Key? key }) : super(key: key);

  final _bloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text(kBlocPattern),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: 
     Center(
      child: StreamBuilder(
        stream: _bloc.counter,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          return Container(
            child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${snapshot.data}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
          );
        },
      ),
    ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              _bloc.counterEventSink.add(IncrementEvent());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed:(){
              _bloc.counterEventSink.add(DecrementEvent());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove,
            )
          )
        ]
      ) 
    );
  }
}