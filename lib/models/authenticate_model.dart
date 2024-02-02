import 'dart:convert';

AuthenticateModel authenticateModelFromJson(String str) => AuthenticateModel.fromJson(json.decode(str));
String authenticateModelToJson(AuthenticateModel data) => json.encode(data.toJson());

class AuthenticateModel {
   bool? success;
   Data? data;
   String? message;
  AuthenticateModel({this.success, this.data,this.message});
  factory AuthenticateModel.fromJson(Map<String,dynamic> json) =>
     AuthenticateModel (
      success: json['success'] ,
      data: Data.fromJson(json['data']),
      message: json['message']
    );
    Map<String,dynamic> toJson () =>{
      "success":success,
      "data": data?.toJson(),
      "message": message
    };
  
}
class Data {
  int? id;
  String? firstName;
  String? lastName;
  String? username;
  String? token;
  String? picture;
  Data({this.id, this.firstName, this.lastName, this.username, this.token, this.picture});
  factory Data.fromJson(Map<String,dynamic> json){
    return Data(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      username: json['username'] as String,
      token :json['token'] as String,
      picture :json['picture'] as String
    );
  }
  Map<String,dynamic> toJson()=>{
     "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "token": token,
        "picture": picture,
    
  };
}