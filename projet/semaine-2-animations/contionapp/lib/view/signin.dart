// creation de la page de connxion

import 'package:flutter/material.dart';
import 'signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  final TextEditingController _userControler = TextEditingController();
  final TextEditingController _passwordControler = TextEditingController();
  
   

  @override
  Widget build(BuildContext context) {
    double sized = 80;
    double espace = 25;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Form(
            child: Column(
              children: [
                const SizedBox(height: 50,),
                Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ),
                SizedBox(height: espace),
                TextFormField(
                  controller: _userControler,
                  decoration: InputDecoration(
                    hint: Text('Phone/Email'),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      ),
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                  
                ),
                SizedBox(height: espace,),
                TextFormField(
                  controller: _passwordControler,
                  decoration: InputDecoration(
                    hint: Text('Password'),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      ),
                      borderRadius: BorderRadius.circular(espace)
                    )
                  ),
                ),
                SizedBox(height: espace,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        textAlign: TextAlign.end,
                        'Forget Password ?',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 10, 63, 106)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: espace,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 10, 63, 106)
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    )
                  ),
                ),
                SizedBox(height: espace,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: screenWidth*0.4,
                      height: 1,
                      child: Container(
                        color: Colors.grey, // couleur grise
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth*0.4,
                      height: 1,
                      child: Container(
                        color: Colors.grey, // couleur grise
                      ),
                    )
                  ],
                ),
                SizedBox(height: espace,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        width: sized,
                        height: sized,
                        child: Container(
                          decoration: BoxDecoration(
                            
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        )
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        width: sized,
                        height: sized,
                        child: Container(
                          decoration: BoxDecoration(
                            
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        )
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        width: sized,
                        height: sized,
                        child: Container(
                          decoration: BoxDecoration(
                            
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                         
                        )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: espace,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to Booklink ?',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                       Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => const Signup(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0); // Animation commence du bas
                            const end = Offset.zero;        // Termine à sa position normale
                            const curve = Curves.ease;      // Douceur de la transition

                            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 10, 63, 106),
                          fontSize: 18
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}