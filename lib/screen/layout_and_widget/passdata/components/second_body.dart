import 'package:flutter/material.dart';
import 'package:myapp/screen/layout_and_widget/passdata/passdata_third_screen.dart';
class SecondBody extends StatefulWidget {
  const SecondBody({ Key? key, this.data }) : super(key: key);
  final String? data;
  @override
  _SecondBodyState createState() => _SecondBodyState();
}

class _SecondBodyState extends State<SecondBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(widget.data!,style: TextStyle(fontSize: 40),),
          ),
          ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PassdataThirdScreen(
                      data: widget.data,
                    );
                  }));
                },
                child: Text("pass data to screen 3"))
        ],
      ),
    );

  }
}