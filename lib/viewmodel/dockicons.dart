import 'package:flutter/material.dart';

class Dockicons extends StatefulWidget {
  final IconData icon;
  final Color color;
  final String iconname;
  final bool? clicked;
  const Dockicons(
      {super.key,
      required this.icon,
      required this.color,
      this.clicked,
      required this.iconname});

  @override
  State<Dockicons> createState() => _DockiconsState();

 
}

class _DockiconsState extends State<Dockicons> {
  bool clicked = false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () {
        setState(() {
          clicked = true;
        });

        // Hide the CircleAvatar after 2 seconds
        Future.delayed(Duration(milliseconds: 500), () {
          setState(() {
            clicked = false;
          });
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tooltip(
            margin: EdgeInsets.all(20),
            enableFeedback: true,
            decoration: BoxDecoration(
                color: const Color.fromARGB(118, 255, 255, 255),
                borderRadius: BorderRadius.circular(9)),
            message: widget.iconname,
            textStyle: TextStyle(color: Colors.black),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                widget.icon,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          clicked
              ? CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 3,
                )
              : Container(),
        ],
      ),
    );
  }
}
