import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  
  const Homepage({super.key,});
  
  @override
  State<Homepage> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<Homepage>{

  Color _backgroundColor = Colors.white;

  final List<String> _titles = [
    'Apprendre les interactifs',
    'I love Flutter',
    'East Sleep Code Repeat'
  ];

  int _titleIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_titleIndex]),
        centerTitle: true,
        backgroundColor: _backgroundColor,
      ),
   
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                setState((){
                  _backgroundColor = (_backgroundColor == Colors.white) ? Colors.black : Colors.white;
                });
              }, 
              
              child: const Text('Cliquer Moi')
            ),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  _titleIndex = (_titleIndex + 1)%_titles.length;
                });
              }, 
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.lightGreenAccent),
                textStyle: WidgetStatePropertyAll<TextStyle>(TextStyle(fontSize: 20, color: Colors.white))
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.edit),
                  Text('Changer le titre')
                ],
              ),
            ),
            FilledButton(
              onPressed: (){}, 
              child: const Text('Filled')),
            OutlinedButton(
              onPressed: (){},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.5,
                  color: Colors.redAccent,
                  style: BorderStyle.solid
                )
              ),
             child: Text('un outline')
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.add)
            ),
          ],
        ),
      )
    );
  }
}