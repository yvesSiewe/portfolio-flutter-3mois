
import 'package:flutter/material.dart';
import 'composants/widget.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Layout(),
    );
  }
}

class Layout extends StatelessWidget{
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 600){
          double size = constraints.maxWidth*0.2;
          double height = constraints.maxHeight;
          return Scaffold(
            body: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size,
                      child: Menu(sizedh: height,)
                    ),
                    SizedBox(width: 50,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Header(sized: height*0.2),
                          Body2(sized: height*0.7)
                        ],
                      ),
                    )
                  ],
                ),
              )
          );
        }
        else{
          return Scaffold(
            appBar: AppBar(
              title: Text('Dashbord'),
            ),
            drawer: Drawer(),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Header(),
                  Body2()
                ],
              ),
            ),
          );
        }
      }
    );
  }
}


