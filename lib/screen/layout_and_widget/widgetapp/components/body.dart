import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Route generate(RouteSettings settings){
    Route page = new PageRouteBuilder(pageBuilder:  (BuildContext context,Animation<double> animation,
                Animation<double> secondaryAnimation){
                  return new Container();
                });
    switch(settings.name){
      case "/":
        page =  new PageRouteBuilder(
            pageBuilder: (BuildContext context,Animation<double> animation,
                Animation<double> secondaryAnimation){
              return new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 100,),
                  
                  const Padding(padding: const EdgeInsets.all(10.0)),
                  
                  new GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed("/first"),
                    child: new Container(
                      padding: const EdgeInsets.all(10.0),
                      color:Colors.blue,
                      child: const Text("Go to First Page"),
                    ),
                  ),
                  const Padding(padding: const EdgeInsets.all(10.0)),
                  new GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed("/abcd"),
                    child: new Container(
                      padding: const EdgeInsets.all(10.0),
                      color:Colors.blue,
                      child: const Text("Unkown Route"),
                    ),
                  )
                ],
              );
            },
            transitionsBuilder: (_, Animation<double> animation, Animation<double> second, Widget child) {
              return new FadeTransition(
                opacity: animation,
                child: new FadeTransition(
                  opacity: new Tween<double>(begin: 1.0, end: 0.0).animate(second),
                  child: child,
                ),
              );
            }
        );
        break;
      case "/first":
        page =  new PageRouteBuilder(
            pageBuilder: (BuildContext context,Animation<double> animation,
                Animation<double> secondaryAnimation){
              return new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("First Page",textDirection: TextDirection.ltr,),
                    const Padding(padding: const EdgeInsets.all(10.0)),
                    new GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: new Container(
                        padding: const EdgeInsets.all(10.0),
                        color:Colors.blue,
                        child: const Text("Back"),
                      ),
                    )
                  ]
              );
            },
            transitionsBuilder: (_, Animation<double> animation, Animation<double> second, Widget child) {
              return new FadeTransition(
                opacity: animation,
                child: new FadeTransition(
                  opacity: new Tween<double>(begin: 1.0, end: 0.0).animate(second),
                  child: child,
                ),
              );
            }
        );
        break;
    }
    return page;
  }

  Route unKnownRoute(RouteSettings settings){
    return new PageRouteBuilder(
        pageBuilder: (BuildContext context,Animation<double> animation,
            Animation<double> secondaryAnimation){
          return new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("First Page",textDirection: TextDirection.ltr,),
                const Padding(padding: const EdgeInsets.all(10.0)),
                new GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: new Container(
                    padding: const EdgeInsets.all(10.0),
                    color:Colors.blue,
                    child: const Text("Back"),
                  ),
                )
              ]
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return new WidgetsApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: generate,
        onUnknownRoute: unKnownRoute,
        textStyle: const TextStyle(fontSize: 20),
        
        initialRoute: "/",
        color: Colors.red
    );
  }
}