import 'package:flutter/material.dart';

class Body2 extends StatelessWidget {
  final double? sized ;
  const Body2({super.key,  this.sized});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: sized,
      color: Colors.red,
      child: Center(
        child: Text(
          'Container', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}