import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String dialogData ="";
  String selected = "";
  List<bool> lstExpan = [false, false,false,false];
  var _selectedFromDialog = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ExpansionPanelList(
            animationDuration: Duration(milliseconds: 500),
            dividerColor: Colors.red,
            elevation: 1,
            expansionCallback: (int item, bool status) {
              print(item.toString());
              setState(() {
                lstExpan[item] = !lstExpan[item];
              });
            },
            children: [
              ExpansionPanel(
                  isExpanded: lstExpan[0],
                  canTapOnHeader: true,
                  headerBuilder: (BuildContext context, bool isExpan) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Dialog"),
                      ),
                    );
                  },
                  body: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                           dialogData = (await showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: const Text('AlertDialog Title'),
                                      content:
                                          const Text('AlertDialog description'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Cancel'),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    )))!;
                                    setState(() {
                                      
                                    });
                          },
                          child: Text("Dialog")),
                          Text(dialogData)
                    ],
                  )),
              ExpansionPanel(
                  isExpanded: lstExpan[1],
                  headerBuilder: (BuildContext context, bool isExpan) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Bottom Sheet"),
                      ),
                    );
                  },
                  body: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Column(
                                    children: [
                                      ListTile(
                                        leading: Icon(Icons.ac_unit),
                                        title: Text("Cooling"),
                                        onTap: () {
                                          _selectItem("Coolling");
                                        },
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.accessibility_new),
                                        title: Text("People"),
                                        onTap: () {
                                          _selectItem("People");
                                        },
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.assessment),
                                        title: Text("Stats"),
                                        onTap: () {
                                          _selectItem("Stats");
                                        },
                                      )
                                    ],
                                  );
                                });
                          },
                          child: Text("Botton Sheet")),
                      Text(selected),
                    ],
                  )
              ),
              ExpansionPanel(
                  isExpanded: lstExpan[2],
                  headerBuilder: (BuildContext context, bool isExpan) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Simple Dialog"),
                      ),
                    );
                  },
                  body: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _displayDialog(context);
                        },
                        child: Text("Simple dialog")),
                         Text(_selectedFromDialog)
                    ],
                  )), 
              ExpansionPanel(
                  isExpanded: lstExpan[3],
                  headerBuilder: (BuildContext context, bool isExpan) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Snack bar"),
                      ),
                    );
                  },
                  body: Column(
                    children: [
                       ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Yay! A SnackBar!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );

                // Find the ScaffoldMessenger in the widget tree
                // and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("Snack bar")),
                       
                    ],
                  ))
            
            ],
          )
        ],
      ),
    );
  }

  _selectItem(String mySelect) {
    setState(() {
      selected = mySelect;
    });
    Navigator.pop(context);
  }

  _displayDialog(BuildContext context) async {
    _selectedFromDialog = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: SimpleDialog(
            title: Text('Choose food'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Pizza");
                },
                child: const Text('Pizza'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Burger");
                },
                child: const Text('Burger'),
              ),
            ],
            elevation: 10,
            //backgroundColor: Colors.green,
          ),
        );
      },
    );

    setState(() {
     
    });
  }
}
