// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 113, 163),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 71, 103),
        centerTitle: true, 
        title : const Text("Ask Me Anything") 
        ),
      body: const magicball(),
      ),
    )
  );
}

// ignore: camel_case_types
class magicball extends StatefulWidget {
  const magicball({super.key});

  @override
  State<magicball> createState() => _magicballState();
}
// test

// ignore: camel_case_types
class _magicballState extends State<magicball> {

  var BallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  BallNumber = Random().nextInt(5)+1;
                });
            },
            child : Image.asset("images/ball$BallNumber.png"), 
            ),
          )
        ],
      ),
    );
  }
}

