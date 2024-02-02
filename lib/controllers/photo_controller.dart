import 'package:flutter/material.dart';
import 'package:myapp/api/api.dart';
import 'package:myapp/models/photo_model.dart';
class PhotoController{
   static Future<List<PhotoModel>> getAllPhoto() async{
    try{
    Api api = Api();
    var result = await api.getAllPhoto();
     List<PhotoModel>  lstPhoto =  photoModelFromJson(result.body);
     return lstPhoto;
    }
    catch(e){
      return [PhotoModel()];
    }
  }
}