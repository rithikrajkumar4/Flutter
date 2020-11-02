import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(child: Image.asset('images/me.jpg')),
                // CircleAvatar(
                //   radius: 50.0,
                //   backgroundImage: AssetImage('images/me.jpg'),
                // ),
                Text('Rithik Rajkumar',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 20,
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      wordSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child:Divider(
                    color: Colors.blue[100],
                    thickness:3,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 20,
                      color: Colors.blue,
                    ),
                    title: Text(
                      '9968556205',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blue[900]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.red,
                    ),
                    title: Text(
                      'rithikrajkumar@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
