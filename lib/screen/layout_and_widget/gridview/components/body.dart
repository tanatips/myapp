import 'package:flutter/material.dart';

import 'myalert_dialog.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> items = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen',
    'Twenty'
  ];
  getGridViewItems(BuildContext context, String gridItem){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return MyAlertDialog(title:gridItem);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: items
          .map((data) =>
           GestureDetector(
              onTap: () {
               getGridViewItems(context, data);
              },
              child: 
              Container(
                  
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.green,
                  child: Center(
                      child: Text(data,
                          style: TextStyle(fontSize: 22, color: Colors.white),
                          textAlign: TextAlign.center)
                      )
                     )
                    )
                   )
          .toList(),
    )
    );
  }
}

