import 'package:flutter/material.dart';
import 'package:myapp/screen/layout_and_widget/life_cycle/life_screen.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() {
    print(" 1. create stage");
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  int _counter = 0;
  @override
  void deactivate() {
    print('7. deactivate');
    super.deactivate();
  }
  @override
  void dispose() {
    print('8. dispose');
    super.dispose();
  }
  @override
  void initState() {
     print('2.1 mounted:$mounted');
     print("2.2 initState()");
    super.initState();
  }
  @override
  void didChangeDependencies() {
    print('3 didChangeDependencies');
    super.didChangeDependencies();
    
  }
  @override
  void didUpdateWidget (Body oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('5. didUpdateWidget');
  }
   
   
  Widget build(BuildContext context) {
    print('4. build');
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("count:",style:TextStyle(fontSize: 20)),
            Text(this._counter.toString(),style:TextStyle(fontSize: 20)),
          ],)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           
            setState(() {
              print("6. setState");
                _counter=_counter+1;
                // print(_counter);
            });
           
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), //
    );
  }
}