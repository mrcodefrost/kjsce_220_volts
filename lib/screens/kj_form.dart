import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('FORM')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 100.0,
              child: Image.asset('assets/guidelines.png'),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Container(
                height: 50.0,
                width: 200.0,
                color: Colors.red,
                child: Center(child: Text('Detail 1 to be filled')),
              ),
            ),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            Center(
              child: Container(
                height: 50.0,
                width: 200.0,
                color: Colors.red,
                child: Center(child: Text('Detail 2 to be filled')),
              ),
            ),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            Center(
              child: Container(
                height: 50.0,
                width: 200.0,
                color: Colors.red,
                child: Center(child: Text('Detail 3 to be filled')),
              ),
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}
