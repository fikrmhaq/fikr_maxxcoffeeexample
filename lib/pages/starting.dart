import 'package:flutter/material.dart';

class Starting extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/starting.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/logoleft.png',
              // width: 260,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 45,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('MAXX COFFEE'),
                  Text('TEMBAGAPURA'),
                  Text('TEMBAGAPURA'),
                ],
              ),
            )
          ],
        ) /* add child content here */,
      ),
    );
  }
}
