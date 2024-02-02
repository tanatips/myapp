import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
        children: [
          BoxRed(size: size),
          BoxGreen(size: size),
          BoxBlue(size: size),
          CloseButton(),
        ],
      ),
    );
  }
}

class CloseButton extends StatelessWidget {
  const CloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
    right: 20,
    top: 10,
    child: InkResponse(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: GestureDetector(
        child: CircleAvatar(
          child: Icon(Icons.close),
        ),
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
    ),
        );
  }
}

class BoxBlue extends StatelessWidget {
  const BoxBlue({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: size.width*0.6,
        height: size.height*0.6,
        color: Colors.blue
      ),
    );
  }
}

class BoxGreen extends StatelessWidget {
  const BoxGreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: size.width*0.7,
        height: size.height*0.7,
        color: Colors.green
      ),
    );
  }
}

class BoxRed extends StatelessWidget {
  const BoxRed({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      
      child: Container(
        width: size.width*0.8,
        height: size.height*0.8,
        color: Colors.red
      ),
    );
  }
}