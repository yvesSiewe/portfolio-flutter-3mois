import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double? sized;
  const Header({super.key, this.sized});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      height: sized,
      color: Colors.red,
      child: Center(
        child: Text(
          'Header', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}