import 'package:flutter/material.dart';
import 'package:myappassignment/main.dart';

class Screen_One extends StatefulWidget {
  const Screen_One({super.key});

  @override
  State<Screen_One> createState() => _Screen_OneState();
}

class _Screen_OneState extends State<Screen_One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "There is no path to happiness; happiness is the path.",
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
              child: Text("Go Back to Happiness"))
        ],
      )),
    );
  }
}
