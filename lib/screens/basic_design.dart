// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Image
          Image(image: AssetImage('assets/landscape.jpg')),
          //Title widget
          Title()
        ] 
      ),
   );
  }
}

class Title extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
              Text('Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black38)),
            ]
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}