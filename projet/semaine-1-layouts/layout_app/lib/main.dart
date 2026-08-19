
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burger Queen '),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green
              ),
              child: Card(
                semanticContainer: true,
                
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.locationPin),
                              SizedBox(width: 10),
                              Text('Mon restaurant le plus proche'),
                            ],
                            
                          ),
                          Text('4km')
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: ()=>{}, 
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            elevation: 0,
                            backgroundColor: Color.fromARGB(220, 18, 0, 30),
                          ),
                          child: Text(
                            'Commander',
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              color: Colors.white
                            ),
                          ),
                        ),
                      )
                    ],
                    
                  ),
                ),
              ),
            ),
            Text('En ce moment'),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 500,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/layer-burger.jpg', fit: BoxFit.cover,),
                    ),
                    Text(
                      'Une petite faim ?',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text('Chaud devant'),
            Text('Les meilleurs de nos beugeurs a la portee de clic'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  burgerCard(name: 'Twins', url: 'twins', description: 'Le burgeur des jumeaux qui font la paire...'),
                  burgerCard(name: 'Big Queen', url: 'big-queen', description: 'Pour celles qui portent la couronne a la maison'),
                  burgerCard(name: 'Egg Bacon', url: 'egg-bacon-burger', description: 'le berger de leve tot'),
                  burgerCard(name: 'Prince', url: 'prince', description: 'Le preferer des futurs roi'),
                  burgerCard(name: 'Cheese', url: 'cheese', description: 'Le classique pour les fans de fromage')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container burgerCard({required String name, required String url, required String description}){
    double size = 240;

    TextStyle descriptionStyle = const TextStyle(    // cette variable de type TextStyle nous permet d'ajouter du style a notre description
      fontStyle: FontStyle.italic,
      color: Colors.grey
    );
    return Container(
      margin: const  EdgeInsets.all(12),
      clipBehavior: Clip.antiAlias,
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.pinkAccent.withAlpha(50)
      ),
      child: Column(
        children: [
          Image.asset(
            'images/$url.jpg',
            height: size*0.7,
            width: size,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
              
            ),
          ),
          Text(
            description,
            style: descriptionStyle,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  // Card customCard({required String iamgeLink, required String title, required String description, required BuildContext context}){
  //   return Card(
  //     child: SizedBox(
  //       width: 200,
  //       height: 200,
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Expanded(
  //             child: ClipRRect(
  //               child: Image.asset(
  //                 iamgeLink,
  //                 fit: BoxFit.cover
  //               )
  //             )
  //           ),
  //           Center(child: Text(title)),
  //           Center(child: Text(description))
  //         ],
  //       ),
  //     ),
  //   );
  // }
}



