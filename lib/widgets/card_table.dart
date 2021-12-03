// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SilgeCard(color: Colors.blue, icon: Icons.g_mobiledata_outlined, text: 'General'),
            _SilgeCard(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transporte'),
          ]
        ),
        TableRow(
          children: [
            _SilgeCard(color: Colors.green, icon: Icons.date_range, text: 'Citas'),
            _SilgeCard(color: Colors.purple, icon: Icons.chat, text: 'Chat'),
          ]
        ),
        TableRow(
          children: [
            _SilgeCard(color: Colors.grey, icon: Icons.hotel_sharp, text: 'Dormir'),
            _SilgeCard(color: Colors.redAccent, icon: Icons.notifications, text: 'Notificaciones'),
          ]
        ),
        TableRow(
          children: [
            _SilgeCard(color: Colors.yellowAccent, icon: Icons.help, text: 'Ayuda'),
            _SilgeCard(color: Colors.indigo, icon: Icons.exit_to_app, text: 'Salir'),
          ]
        ),
      ],
    );
  }
}

class _SilgeCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SilgeCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon, size: 40, color: Colors.white),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(this.text, style: TextStyle(color: this.color, fontSize: 18))
        ],
      )
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    Key? key, 
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}