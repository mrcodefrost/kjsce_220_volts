import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GuideLines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Container(child: Image.asset('assets/guidelines.png')),
            Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                  child: Text(
                'CRASH GUIDELINES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              )),
            ),
            SizedBox(height: 20.0),
            Container(
              alignment: Alignment.center,
              child: Text(
                'In the event of a Crash please \n follow the mentioned guidelines',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              color: Colors.red,
              width: 300.0,
              height: 40.0,
              child: Center(child: Text('Guideline 1...............')),
            ),
            SizedBox(height: 15.0),
            Container(
              color: Colors.red,
              width: 300.0,
              height: 40.0,
              child: Center(child: Text('Guideline 2...............')),
            ),
            SizedBox(height: 15.0),
            Container(
              color: Colors.red,
              width: 300.0,
              height: 40.0,
              child: Center(child: Text('Guideline 3...............')),
            ),
            SizedBox(height: 15.0),
            Container(
              color: Colors.red,
              width: 300.0,
              height: 40.0,
              child: Center(child: Text('Guideline 4...............')),
            ),
            SizedBox(height: 15.0),
            Container(
              color: Colors.red,
              width: 300.0,
              height: 40.0,
              child: Center(child: Text('Guideline 5...............')),
            )
          ],
        ),
      ),
    );
  }
}
