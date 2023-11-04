import 'package:flutter/material.dart';

import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}

class Clickebal_container extends StatefulWidget {
  final String heading;
  final IconData iconData;

  Clickebal_container({required this.heading, required this.iconData});

  @override
  _Clickebal_containerState createState() => _Clickebal_containerState();
}

class _Clickebal_containerState extends State<Clickebal_container> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpansion,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  widget.iconData,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 20),
              Text(
                widget.heading,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          _isExpanded
              ? Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Content of ${widget.heading}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,

      body: Column(
        children: [
            Container(
              padding: EdgeInsets.only(top: 150),
              child: const Text("Join us" ,style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold,
              ),),
            ),

        Padding(


          padding: const EdgeInsets.all(30.0),
          child: Center(


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[


                Clickebal_container(heading: 'Personal', iconData: Icons.person),
                const SizedBox(height: 70),
                Clickebal_container(heading: 'Business', iconData: Icons.business_center),
                const SizedBox(height: 70),
                Clickebal_container(heading: 'Merchant', iconData: Icons.woo_commerce_outlined),
              ],
            ),
          ),
        ),
    ],
      ),
    );
  }
}
