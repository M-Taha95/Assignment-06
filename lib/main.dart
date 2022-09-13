import 'package:flutter/material.dart';
import 'package:myappassignment/Screen_One.dart';
import 'package:myappassignment/Screen_Three.dart';
import 'package:myappassignment/Screen_Two.dart';

void main() {
  runApp(MaterialApp(
    home: MyAppAssignment(),
  ));
}

class MyAppAssignment extends StatelessWidget {
  const MyAppAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Screen_One();
                        },
                      ));
                    });
                  }),
                  child: Text(
                    "Happiness",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Screen_Two();
                        },
                      ));
                    });
                  }),
                  child: Text(
                    "Motivation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Screen_Three();
                        },
                      ));
                    });
                  }),
                  child: Text(
                    "Encouragement",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ));
  }
}
