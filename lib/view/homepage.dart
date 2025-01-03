import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:macdock/viewmodel/dockicons.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Dockicons> dockIcons = [
    Dockicons(icon: CupertinoIcons.person_fill, color: const Color.fromARGB(255, 43, 19, 230), iconname: 'Contacts'),
    Dockicons(icon: Icons.message, color: const Color.fromARGB(255, 15, 158, 20), iconname: 'Message'),
    Dockicons(icon: Icons.phone, color: const Color.fromARGB(255, 235, 44, 31), iconname: 'Phone'),
    Dockicons(icon: Icons.camera, color: Colors.teal, iconname: 'Camera'),
    Dockicons(icon: CupertinoIcons.photo_fill, color: Colors.lime, iconname: 'Gallery'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(160, 2, 94, 1),
                  Color.fromRGBO(235, 168, 49, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(70, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: dockIcons.asMap().entries.map((entry) {
                      int index = entry.key;
                      Dockicons icon = entry.value;

                      return Draggable<int>(
                        data: index,
                        
                        feedback: icon.animate().move(
                          
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOut,
                        ),
                        childWhenDragging: SizedOverflowBox(size: Size(30, 30),),
                        child: DragTarget<int>(
                          builder: (context, candidateData, rejectedData) {
                            return icon;
                          },
                          onAcceptWithDetails: (draggedIndex) {
                            setState(() {
                              // Swap the icons
                              final temp = dockIcons[draggedIndex.data];
                              dockIcons[draggedIndex.data] = dockIcons[index];
                              dockIcons[index] = temp;
                            });
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

