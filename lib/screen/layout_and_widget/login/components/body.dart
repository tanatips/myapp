import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/api/api.dart';
import 'package:myapp/constanct.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/authenticate_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
    final _formKey = GlobalKey<FormState>();
  var txtUsername = TextEditingController();
  var txtPassword = TextEditingController();
  @override
  
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[100],
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Container(
            width: size.width*0.9,
            height: size.height*0.45,
            child: Card(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text("Login",style: TextStyle(fontSize: 30),),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                          border: Border.all(color:Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextFormField(
                            controller: txtUsername,
                            
                            validator: (value){
                              if(value!.isEmpty){
                                return "กรุณากรอก ชื่อผู้ใช้งาน";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "ชื่อผู้ใช้งาน",
                               border: InputBorder.none
                              ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                          border: Border.all(color:Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextFormField(
                            controller: txtPassword,
                            obscureText: true,
                            validator: (value){
                              if(value!.isEmpty){
                                return "กรุณากรอก รหัสผ่าน";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                               hintText: "รหัสผ่าน",
                               border: InputBorder.none
                              ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color?>(kPrimaryColor),),
                      onPressed: () async {
                      if(_formKey.currentState!.validate()){
                        Api api =new Api();
                        var result = await api.getUsersAuthenticate(txtUsername.text,txtPassword.text);
                        if( result.statusCode ==  200){
                            final AuthenticateModel authen = authenticateModelFromJson(result.body);
                            if(authen.success == true){
                               var prefs = await SharedPreferences.getInstance();
                               prefs.setString("firstName", authen.data!.firstName.toString());
                               prefs.setString("lastName", authen.data!.lastName.toString());
                               prefs.setString("token", authen.data!.token.toString());
                               Navigator.push(context,MaterialPageRoute(builder: (context){return MyHomePage(title: 'Flutter Demo Home Page');}));
                            }
                            else {
                              var alert = new AlertDialog(content: new Text(authen.message.toString()), actions: <Widget>[
                                new TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    })
                              ]);
                              showDialog(context: context, builder: (BuildContext context) => alert);
                            }
                        }
                      }
                    }, child: Text("Login"))
                  ],),
                ),
              ),
            ),
          ),
        ),
      )
      );
    
  }
}