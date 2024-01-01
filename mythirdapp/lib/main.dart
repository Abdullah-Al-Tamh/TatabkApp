import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text(
          "Tatabok",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        backgroundColor: Colors.black,
      ),
      body: const imagePage(),
    ),
  ));
}

class imagePage extends StatefulWidget {
  const imagePage({super.key});

  @override
  State<imagePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<imagePage> {
  int leftImageNumber = 7;
  int rightImageNumber = 4;

  void ChnageImageNumber() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (leftImageNumber == rightImageNumber)
          const Text(
            'congratulations, You Are Win!',
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          )
        else
          const Text(
            'Oh thy do not look alike, try again!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          ChnageImageNumber();
                        });
                      },
                      child: Image.asset('images/image-$leftImageNumber.png'))),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          ChnageImageNumber();
                        });
                      },
                      child:
                          Image.asset('images/image-$rightImageNumber.png'))),
            ],
          ),
        )
      ],
    );
  }
}
