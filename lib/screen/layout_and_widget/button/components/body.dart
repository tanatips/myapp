import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? dropdownValue;
   List<String> myItems = ['One', 'Two', 'Free', 'Four'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                print(" ElevatedButton ");
              },
              child: Text(" ElevatedButton ")),
           
            OutlinedButton(onPressed: (){
              print("Outline button");
            }, child: Text(" OutlinedButton ")),
          SizedBox(
            //  width: size.width*0.5,
            height: 30,
            child: 
              DropdownButtonHideUnderline(
              child: DropdownButton(
                // itemHeight: 10,
                menuMaxHeight:100,
                hint: Text(
                  'Select Gender',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                value: dropdownValue,
                onChanged: (String? genderNewValue) {
                  setState(
                    () {
                      dropdownValue = genderNewValue;
                    },
                  );
                },
                items: myItems.map<DropdownMenuItem<String>>(
                  (value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    );
                  },
                ).toList(),
              )
              ),
            )
          
          ,IconButton(
            tooltip: "Icon Button",
            icon: Icon(Icons.search),
            onPressed: (){
              print('icon button');
            },)
           
        ],
      ),
    );
  }
}
