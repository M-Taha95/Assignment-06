import 'package:flutter/material.dart';
import 'package:myappassignment/main.dart';

class Screen_Two extends StatefulWidget {
  const Screen_Two({super.key});

  @override
  State<Screen_Two> createState() => _Screen_TwoState();
}

class _Screen_TwoState extends State<Screen_Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Success is not final; failure is not fatal: It is the courage to continue that counts.",
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
              child: Text("Go Back to Motivation"))
        ],
      )),
    );
  }
}
