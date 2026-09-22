import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _text = 0;
  

  @override
  Widget build(BuildContext context) {

    void printSnakBar(){
      SnackBar snackBar = SnackBar(
        content: Text('vous venez de cliquer sur le bouton'),
        duration: Duration(seconds: 3),
        showCloseIcon: true,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    void showAlertDialog(){
      showDialog(
        barrierDismissible: false,
        context: context, 
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Incrmentation'),
            content: const Text('cliquer sur ok pour incremnter votre compteur'),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                }, 
                child: const Text('Annuler')
              ),
              TextButton(
                onPressed: (){
                  setState(() {
                    _text++;
                  });
                  Navigator.pop(context);
                }, 
                child: const Text('OK'),
              )
            ],
          );
        }
      );
    }
    
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: printSnakBar, 
              child: Text('afficher une snackBar')
            ),

            ElevatedButton(
              onPressed: showAlertDialog, 
              child: Text('vous avez cliquer $_text fois ')
            )
          ],
        ),
      )
      
    );
  }
}
