import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:kjsce_220_volts/screens/kj_form.dart';
import 'package:kjsce_220_volts/screens/kj_guidelines.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.white,
                // decoration: BoxDecoration(
                //   gradient: LinearGradient(
                //       begin: Alignment.topLeft,
                //       end: Alignment.bottomRight,
                //       colors: [Color(0xFFE53935), Color(0xFFFFEBEE)]),
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    TypewriterAnimatedTextKit(
                      text: [
                        'Crash Assistance & '
                            'Rescue System'
                      ],
                      textStyle: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              child: Text(
                'Welcome to C.A.R.S',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
            Divider(
              indent: 70.0,
              endIndent: 70.0,
              thickness: 1.0,
              color: Colors.redAccent.shade100,
            ),
            SizedBox(height: 20.0),
            Container(
              child: Text(
                'To care of you in your worst',
                style: TextStyle(color: Colors.white60, fontSize: 15.0),
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormScreen()));
                });
              },
              child: ScreenCardsRight(
                  imagePath: 'assets/form.png', message: 'FILL DETAILS'),
            ),
            SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GuideLines()));
                });
              },
              child: ScreenCardsRight(
                  imagePath: 'assets/guidelines.png', message: 'GUIDELINES'),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenCardsRight extends StatelessWidget {
  final String imagePath;
  final String message;

  ScreenCardsRight({@required this.imagePath, @required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 300.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image(
            image: AssetImage(imagePath),
          ),
          Divider(),
          Text(
            message,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            // style: kTitleTextstyle.copyWith(color: Colors.pink),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 180);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
