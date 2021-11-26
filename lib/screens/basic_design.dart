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
          Title(),

          //Button Section
          ButtonSection(),

          //Descripcion
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat')
          ),
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

class ButtonSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.room_outlined, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );

    /*
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child: Row(
        children: [
          Column(
            children: [
              Icon(Icons.call, color: Colors.blue),
              Text('CALL', style: TextStyle(color: Colors.blue)),
            ],
          ),
          Expanded(child: Container()),
          Column(
            children: [
              Icon(Icons.map, color: Colors.blue),
              Text('ROUTE', style: TextStyle(color: Colors.blue)),
            ],
          ),
          Expanded(child: Container()),
          Column(
            children: [
              Icon(Icons.share, color: Colors.blue),
              Text('SHARE', style: TextStyle(color:Colors.blue))
            ],
          ),
        ],
      ),
    );
    */
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30),
        Text(this.text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}