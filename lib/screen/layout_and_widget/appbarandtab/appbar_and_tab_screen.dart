import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';
class AppbarAndTabScreen extends StatefulWidget {
  const AppbarAndTabScreen({ Key? key }) : super(key: key);

  @override
  _AppbarAndTabScreenState createState() => _AppbarAndTabScreenState();
}

class _AppbarAndTabScreenState extends State<AppbarAndTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppbarAndTab),centerTitle: 
      true,backgroundColor: kPrimaryColor,
       actions: [
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],),
      body: Body() ,
    );
  }
}