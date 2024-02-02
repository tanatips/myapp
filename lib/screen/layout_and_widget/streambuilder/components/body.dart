import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/controllers/photo_controller.dart';
import 'package:myapp/models/photo_model.dart';

import '../streambuilder_screen.dart';
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late Future<List<PhotoModel>> _postsController;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        child: StreamBuilder(
          stream: PhotoController.getAllPhoto().asStream(),
          builder: (context, snapshot) {
            Container container = Container();
            if(!snapshot.hasData){
              return CircularProgressIndicator();
            }
            else {
              switch(snapshot.connectionState){
                case ConnectionState.none:
                  container = 
                  Container(
                    child: Row(
                        children: <Widget>[
                        const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 60,
                        ), 
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text('Error: ${snapshot.error.toString()}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text('Stack trace: ${snapshot.stackTrace}'),
                        ),
                      ]
                    ),
                  );
                  
                  break;
                case ConnectionState.waiting:
                  container = 
                  Container(
                    child: Column(children: <Widget>[
                      SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Awaiting bids...'),
                      )
                    ]),
                  );
                break;
                 case ConnectionState.done:
                  container = Container(
                  child: 
                  GridView.count(
                              primary: false,
                              padding: const EdgeInsets.all(20),
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 8,
                              children: (snapshot.data as List<PhotoModel>).map((data) => GestureDetector(
                                child: Container(
                                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                color: Colors.green,
                                child: Center(child: Image.network(data.url.toString()), 
                              )
                            ) 
                          ) 
                        ).toList()
                   ),
                );
                 break;
                case ConnectionState.active:
                  // TODO: Handle this case.
                  break;
              }
              return   
                 Center(child: container);
            }
            
          })
          ),
    );
  }
}