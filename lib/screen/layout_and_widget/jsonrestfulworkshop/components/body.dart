import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/api/api.dart';
import 'package:myapp/controllers/photo_controller.dart';
import 'package:myapp/models/photo_model.dart';
import 'package:myapp/models/user_model.dart';
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _rowsPerPage1 = PaginatedDataTable.defaultRowsPerPage;
  bool _sortAscending = true;
  int _sortColumnIndex = 0;
   List<PhotoModel> data = [PhotoModel()];

   Future<List<PhotoModel>?>  getAllPhoto()  async {
    List<PhotoModel> photos = [PhotoModel()];
    photos = await PhotoController.getAllPhoto();
    setState(() {
      this.data = photos;
    });
    return photos;
  }
  
  @override
  void initState() {
    super.initState();
    getAllPhoto();
  }
  @override
  Widget build(BuildContext context) {
    var dts = DTS(
        data: this.data
        );
    return SingleChildScrollView(
      child: PaginatedDataTable(
         header: Text("Photo"),
         columns: [
                DataColumn(
                label: Text("id"),
                onSort: (columnIndex, ascending) {
                  setState(() {
                    _sortAscending = !_sortAscending;
                    _sortColumnIndex = columnIndex;
                  });
                  if (_sortAscending) {
                    this.data.sort((a, b) => a.id!.compareTo(b.id!));
                  } else {
                    this.data.sort((a, b) => b.id!.compareTo(a.id!));
                  }
                }),
                DataColumn(
                label: Text("title"),
                onSort: (columnIndex, ascending) {
                  setState(() {
                    _sortAscending = !_sortAscending;
                    _sortColumnIndex = columnIndex;
                  });
                  if (_sortAscending) {
                    this.data.sort((a, b) => a.title!.compareTo(b.title!));
                  } else {
                    this.data.sort((a, b) => b.title!.compareTo(a.title!));
                  }
                }),
                
                DataColumn(
                label: Text("url"),
                onSort: (columnIndex, ascending) {
                  setState(() {
                    _sortAscending = !_sortAscending;
                    _sortColumnIndex = columnIndex;
                  });
                  if (_sortAscending) {
                    this.data.sort((a, b) => a.url!.compareTo(b.url!));
                  } else {
                    this.data.sort((a, b) => b.url!.compareTo(a.url!));
                  }
                }),
                DataColumn(
                label: Text("thumnail url"),
                onSort: (columnIndex, ascending) {
                  setState(() {
                    _sortAscending = !_sortAscending;
                    _sortColumnIndex = columnIndex;
                  });
                  if (_sortAscending) {
                    this.data.sort((a, b) => a.thumbnailUrl!.compareTo(b.thumbnailUrl!));
                  } else {
                    this.data.sort((a, b) => b.thumbnailUrl!.compareTo(a.thumbnailUrl!));
                  }
                })
         ],
         source: dts,
      ),
    );
  }
}
class DTS extends DataTableSource {
  late List<PhotoModel>? data;
  DTS({this.data});
  @override
  DataRow? getRow(int index) {
     if(this.data !=null){
       return DataRow.byIndex(
         index: index,
         cells: [
           DataCell(Text(this.data![index].id.toString())),
           DataCell(Text(this.data![index].title.toString())),
           DataCell(
             Image.network(this.data![index].url.toString())
             ),
           DataCell(Image.network(this.data![index].thumbnailUrl.toString())),
         ]
         );
     }
     else{
        return DataRow.byIndex(
         index: index,
         cells: [
           DataCell(Text("")),
           DataCell(Text("")),
           DataCell(Text("")),
           DataCell(Text("")),
         ]);
     }
  }

  @override
  bool get isRowCountApproximate => false;

  @override

  int get rowCount => this.data !=null ?this.data!.length:0;

  @override 
  int get selectedRowCount => 0;
  
}
