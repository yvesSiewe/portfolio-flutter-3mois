
import 'package:flutter/material.dart';
import 'card.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 800){
            double sized = constraints.maxWidth*0.7;
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: sized,
                      height: 500,
                      color: Colors.red,
                      child: Text(
                        'Video en cours de lecture',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                        children: [
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                        ],
                      ),
                      )
                      
                    )
                  ],
                ),
              )
            );
          }
          else{
            return Scaffold(
              body:  Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.red,
                    child: Text(
                      'Video en cours de lecture',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                        children: [
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                          SizedBox(height: 20,),
                          CardDart(),
                        ],
                      ),
                      )
                      
                    )
                ],
              )
            );
          }
        },
      ),
    );
  }
}
