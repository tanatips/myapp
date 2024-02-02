import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  var txtFirstName = TextEditingController();
  var txtLastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: txtFirstName,
              decoration: InputDecoration(
                hintText: "ชื่อ",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "กรุณา ระบุชื่อ";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: txtLastName,
              decoration: InputDecoration(
                hintText: "นามสกุล",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "กรุณา นามสกุล";
                }
                return null;
              },
            ),
          )
          ,ElevatedButton(onPressed: (){
             if (_formKey.currentState!.validate()) {
                print(this.txtFirstName.text);
                print(this.txtLastName.text);
                print("บันทึก");
             }
           
          }, child: Text("บันทึก"))
        ],)),
    );
  }
}