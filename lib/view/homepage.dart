import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macdock/main.dart';
import 'package:macdock/model/widgets/dockicons.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final bool pressed= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
               
                 Color.fromRGBO(160, 2, 94,1),
                 Color. fromRGBO(235, 168, 49,1),
                
                  
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(70, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            
                            Draggable(feedback: 
                            Dockicons(
                                icon: CupertinoIcons.person_fill,
                                color: const Color.fromARGB(255, 35, 31, 249),
                                                         
                                iconname: 'Contacts',
                              ),
                              childWhenDragging: Container(
                               
                                color: Colors.transparent,),
                              child: Dockicons(
                                icon: CupertinoIcons.person_fill,
                                color: const Color.fromARGB(255, 35, 31, 249),
                                                         
                                iconname: 'Contacts',
                              ),
                            ),
                            Draggable(
                              childWhenDragging: Container(color: Colors.transparent,),
                              feedback:Dockicons(
                                icon: Icons.message,
                                color: Colors.green,
                                  
                                   iconname: 'Message',
                              ) ,
                              child: Dockicons(
                                icon: Icons.message,
                                color: Colors.green,
                                  
                                   iconname: 'Message',
                              ),
                            ),
                            Draggable(
                              feedback:Dockicons(
                                icon: Icons.phone,
                                color: const Color.fromARGB(255, 250, 47, 47),
                              
                                     iconname: 'Phone',
                              ) ,
                              childWhenDragging: Container(color: Colors.transparent,),
                              child: Dockicons(
                                icon: Icons.phone,
                                color: const Color.fromARGB(255, 250, 47, 47),
                              
                                     iconname: 'Phone',
                              ),
                            ),
                            Draggable(
                              feedback: Dockicons(
                                icon: Icons.camera,
                                 color: const Color.fromARGB(255, 6, 125, 60),
                                    
                                     iconname: 'Camera',
                              ),
                              childWhenDragging: Container(color: Colors.transparent,), 
                              child: Dockicons(
                                icon: Icons.camera,
                                 color: const Color.fromARGB(255, 6, 125, 60),
                                    
                                     iconname: 'Camera',
                              ),
                            ),
                            Draggable(
                              feedback: Dockicons(
                                icon: CupertinoIcons.photo_fill,
                                color: const Color.fromARGB(255, 102, 186, 11),
                                    
                                     iconname: 'Gallery',
                                     
                              ),  
                              childWhenDragging: Container(color: Colors.transparent,),
                              child: Dockicons(
                                
                                icon: CupertinoIcons.photo_fill,
                                color: const Color.fromARGB(255, 102, 186, 11),
                                    
                                     iconname: 'Gallery',
                              ),
                            ),
                          ],
                        )),
                  ))),
        ],
      ),
    );
  }
}
