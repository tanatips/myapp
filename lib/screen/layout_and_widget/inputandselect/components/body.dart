import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  State<Body> createState() => _BodyState();
}

enum SingingCharacter { lafayette, jefferson }

class _BodyState extends State<Body> {
  bool isChecked=false;
  DateTime dateTime = DateTime.now();
  SingingCharacter? _character = SingingCharacter.lafayette;
  double _currentSliderValue = 20;
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        child: Column(children: [
          Checkbox(
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
                print(value);
              });
            },
          ),
          Text(isChecked.toString())
          ,
          SizedBox(
            height: size.height*0.02,
          ),
          Text("DateTime",style:TextStyle(fontSize: 20)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(dateTime.toString(),style:TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  showDatePicker(
                  context: context, 
                  initialDate: DateTime.now(), 
                  firstDate: DateTime(2021), 
                  lastDate: DateTime(2022)).then((value) => {
                    setState(() {
                      dateTime = value!;
                    }
                  )});
                }, child: Text("Pick a date")),
              ),
               ListTile(
            title: const Text('Lafayette'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                  print(_character);
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                   print(_character);
                });
              },
            ),
          ),
    
              Slider(
              value: _currentSliderValue,
              min: 0,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                  print(_currentSliderValue);
                });
              },
            ),
            SwitchListTile(
              title: Text("ON /OFF Switch: "+switchValue.toString()),
              value: switchValue,
              onChanged: (value){
                setState(() {
                  switchValue = value;
                });
              }),
            Container(
              decoration:  BoxDecoration(
                border: Border.all(color:Colors.grey),
                borderRadius: BorderRadius.circular(25)
                ),
              width: size.width*0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 2,bottom: 2),
                child: TextFormField(
                 decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            )
            ],
          )
        ],),
      ),
    );
  }
}