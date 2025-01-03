import 'package:floating_animation/floating_animation.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Container(
  decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomCenter,colors: [
      Color.fromRGBO(212, 15, 130, 1),
                  Color.fromRGBO(235, 168, 49, 1),
    
  ])),
  child: Stack(
    children:[ FloatingAnimation(
      direction: FloatingDirection.up,
      shapeColors: const {'circle' : Color.fromRGBO(160, 2, 94, 1),},
    ),
    Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(decoration: BoxDecoration(boxShadow: [
                      
                        ], ),child: Image.asset('assets/logo.png',height: 200,width: 200,)),
     Text('MacDock',style: TextStyle(color: const Color.fromARGB(198, 131, 131, 131),fontSize: 30,fontWeight: FontWeight.bold),),
      ],
      
    ))
    
    ]
  ),
),

    );
  }
}