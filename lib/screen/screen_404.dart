import 'package:flutter/material.dart';
class Screen404 extends StatefulWidget {
  @override
  _Screen404State createState() => _Screen404State();
}

class _Screen404State extends State<Screen404> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           const Text(
              '404',
              style: TextStyle(fontSize: 56, fontFamily: 'Montserrat', fontWeight: FontWeight.w800),
            ),
           const Text(
              'This is a Dead End',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 46,
                  color: Colors.black87,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 4,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child:const Text(
                  'Go Back',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueAccent,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800),
                )),
          ],
        ),
      ),
    );
  }
}