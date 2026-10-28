import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  // constructeur de ma classe
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Flutter',),
    );
  }
}

class HomePage extends StatefulWidget{
  
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState(); 
  }
}

class _HomePageState extends State<HomePage>{
  
  int _counter = 0;

  void _onButtonPressed(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Vous avez cliquer',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$_counter fois",
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.onPrimary
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onButtonPressed,
        tooltip: 'Incrementer le compteur',
        child: Icon(Icons.add),
      ),
    );
  }
}