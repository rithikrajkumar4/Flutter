import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent[200],
        body: Center(
          child: Image(
            image: AssetImage('images/coal.jpg'),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('I AM POOR')),
        ),
      ),
    ),
  );
}
