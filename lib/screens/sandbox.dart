import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  // const SandBox({ Key? key }) : super(key: key);

  @override
  State<SandBox> createState() => _SandBoxState();
}

double _opacity = 1;
double _margin = 0;
double _width = 200;
Color _color = Colors.blue;

class _SandBoxState extends State<SandBox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedContainer(
          margin: EdgeInsets.all(_margin),
          color: _color,
          duration: Duration(seconds: 2),
          width: _width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Animate margin"),
                onPressed: () {
                  setState(() {
                    _margin = 50;
                  });
                },
              ),
              ElevatedButton(
                child: Text("Animate color"),
                onPressed: () {
                  setState(() {
                    _color = Colors.red;
                  });
                },
              ),
              ElevatedButton(
                child: Text("Animate width"),
                onPressed: () {
                  setState(() {
                    _width = 400;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacity = 0;
                  });
                },
                child: Text("Animate Opacity"),
              ),
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: Text(
                  'Hide me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
