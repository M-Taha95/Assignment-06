import 'package:flutter/material.dart';
import 'package:myappassignment/main.dart';

class Screen_Three extends StatefulWidget {
  const Screen_Three({super.key});

  @override
  State<Screen_Three> createState() => _Screen_ThreeState();
}

class _Screen_ThreeState extends State<Screen_Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Do not let what you cannot do interfere with what you can do",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyAppAssignment();
                    },
                  ));
                });
              },
              child: Text("Go Bach to Encouragement"))
        ]),
      ),
    );
  }
}
