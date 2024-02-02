import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> data = [];
  loadData(){
    this.data.clear();
    for(var i=0;i<5;i++){
      this.data.add(i.toString());
    }
  }
  @override
  void initState() {
    loadData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: getData,
      child: ListView.builder(
      itemCount: this.data.length,
      itemBuilder: (context,index){
        return ListTile(
        title:Text(this.data[index]));
      }
        
      ),
    );
  }
  Future<void> getData() async{
    List<String> lst = [];
    for(var i=0;i<10;i++){
      lst.add(i.toString());
    }
    this.data.clear();
    setState(() {
      
        this.data=lst;
     
    });
  }
}