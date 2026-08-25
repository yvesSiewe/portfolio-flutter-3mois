

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.45,
              child: SizedBox(
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    
                    gradient: LinearGradient(
                      colors: [const Color.fromARGB(129, 244, 67, 54), const Color.fromARGB(255, 194, 75, 75)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ) 
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      RichText(
                        text: TextSpan(
                          text: 'Welcome on',
                          style: TextStyle(
                            fontSize: 28
                          ),
                          children: const [
                            TextSpan(
                              text: '\n Food Delishous',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic
                              )
                            )
                          ]
                        )
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(30),
              child:  Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
            
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'UserName',
                        border: OutlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){

                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'userEmail',
                        focusColor: Colors.green,
                        border: OutlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.redAccent
                          
                        ),
                        child: Text(
                          'Send',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                          ),
                        ),
                      )
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Text("Don't you have an account ?"),
                        TextButton(onPressed: (){}, 
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.red
                          ),
                        ),

                      )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}