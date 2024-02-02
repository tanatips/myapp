import 'package:flutter/material.dart';
import 'package:myapp/screen/layout_and_widget/passdata/passdata_second_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var txtData = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: txtData ,
            ),
          ),
          Container(
            
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PassdataSecondScreen(
                      data: txtData.text,
                    );
                  }));
                },
                child: Text("pass data screen 2")),
          ),
        ],
      ),
    );
  }
}
