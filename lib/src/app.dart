import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log Me In',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Text('Show a form here!'),
      ),
    );
  }
}
