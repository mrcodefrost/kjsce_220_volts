import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            Container(
              color: Colors.red,
              height: 40.0,
              width: double.infinity,
              child: Center(child: Text('Enter your details below')),
            ),
            SizedBox(height: 10.0),
            TextField(),
            SizedBox(height: 10.0),
            TextField(),
            SizedBox(height: 10.0),
            TextField(),
            SizedBox(height: 10.0),
            TextField(),
            SizedBox(height: 10.0),
            TextField(),
            SizedBox(height: 10.0),
            TextField(),
          ],
        ),
      ),
    );
  }
}
