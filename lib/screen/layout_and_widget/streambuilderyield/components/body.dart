import 'package:flutter/material.dart';

import 'counter_bloc.dart';
 
 
 class Body extends StatelessWidget {
   Body({Key? key}) : super(key: key);
  
  var counter_bloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return StreamBuilder(
      stream: counter_bloc.generateNumber,
      builder: (context, AsyncSnapshot<List<int>> snapshot) {
        print(snapshot.data);
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context,index)
          {
            return ListTile(
              title: Text(snapshot.data![index].toString()),
            );

          });
          //  return Container(
          //    width: size.width,
          //   //  color: Colors.grey,
          //    child: Column(
          //      mainAxisAlignment: MainAxisAlignment.center,
          //      crossAxisAlignment: CrossAxisAlignment.center,
          //      children: [
          //        Text(snapshot.data!.toString(),style: TextStyle(fontSize: 40),)
          //      ],
          //    ),
          //  );

        }
        return Center(child: CircularProgressIndicator());
        // return Text(snapshot.data.toString());
         
         
      },
    );
  }
}