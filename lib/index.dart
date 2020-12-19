import 'package:flutter/material.dart';

void main() => (runApp(MaterialApp(
  home: Index(),
)
));

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(

        child: Image(
          image: AssetImage('assets/K-Wight1.jpg'),
        ),

      ),
      // child: RaisedButton(
      //   OnPressed: (){}
      // ),
    );
  }
}
