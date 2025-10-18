import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final double sizedh;
  const Menu({super.key, required this.sizedh});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Container(
        height: sizedh,
        color: Colors.red,
        child: Center(
          child: Text(
            'Menu du dash',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
          ),
        ),
      )
    );
  }
}