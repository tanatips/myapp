import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../constanct.dart';

class Api {
  getUsersAuthenticate(String username,String password) async
  {
      String url= baseApiUrl+"/Users/authenticate";
      http.Response response = await http.post(
       Uri.parse(url),headers:(<String,String>
          {
            'Content-Type':'application/json'
          }
         ),
          body: jsonEncode(<String,String>{
            "username": username.toString(),
            "password": password.toString()
          }
          )
        ); 
        print(response);
      if (response.statusCode != 200){
        return  response;
      }
      else{
        print("-----> body ");
        print(response.body);
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("user", response.body);
      }
      return response;
    }
    getAllPhoto() async {
      try{
      var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
      //var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
      var client = http.Client();
      final response = await client.get(url);
        if(response.statusCode != 200){
          return response;
        }
      //  print(response.statusCode);
      //  print(response.body);
      return response ;
      }
      catch(e){
        print(e.toString());
        return ;
      }
    }
}