import 'package:flutter/material.dart';

class CardDart extends StatelessWidget{
  const CardDart({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 100,
      color: Colors.red,
    );
  }
}