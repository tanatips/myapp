import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          children: [
        
            ElevatedButton(
              child: const Text('Open route (Navigator.push)'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Navigator.pushName'),
              onPressed: () {
                Navigator.pushNamed(context, '/scrollbar');
              },
            ),
            
            ElevatedButton(
              child: const Text('Navigator.pushReplacementNamed'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/scrollbar');
              },
            ),
             ElevatedButton(
              child: const Text('Navigator.popAndPushNamed'),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/scrollbar');
              },
            ),
            ElevatedButton(
              child: const Text('Navigator.pushNamedAndRemoveUntil'),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/scrollbar',
                (Route<dynamic> route) => false
                // ModalRoute.withName('/navigator')
                );
              },
            ),
          ],
        )
    );
  }
}
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!  (Navigator.pop) '),
        ),
      ),
    );
  }
}
class ThreeRoute extends StatelessWidget {
  const ThreeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tree Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourRoute()),
                );
          },
          child: const Text('Go back!  (Navigator.pop) '),
        ),
      ),
    );
  }
}
class FourRoute extends StatelessWidget {
  const FourRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Four Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/scrollbar'));
          },
          child: const Text('Navigator.popUntil'),
        ),
      ),
    );
  }
}