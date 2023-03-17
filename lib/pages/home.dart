import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 90,
            child: Column(
              children: [
                Image.asset(
                  'assets/group94.png',
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    'MINUMAN MAXX COFFEE TEMBAGAPURA',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            //height: 450,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 80,
                  margin: EdgeInsets.only(bottom: 50, top: 30),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/ellipse34.png',
                          height: 120,
                        ),
                        margin: EdgeInsets.only(right: 10.0, left: 10.0),
                      ),
                      Flexible(
                          child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hot/Iced',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'Americano',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                'A European approach to an American style coffee, combining the perfect espresso with steaming hot water. Also available with ice.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 80,
                  margin: EdgeInsets.only(bottom: 50),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/ellipse34.png',
                          height: 120,
                        ),
                        margin: EdgeInsets.only(right: 10.0, left: 10.0),
                      ),
                      Flexible(
                          child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hot/Iced',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'COOKIES & CREAM FRAPPE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                'One of Maxx Coffee’s signature. A blend of vanilla, milk and cookies, topped with whipped cream',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 80,
                  margin: EdgeInsets.only(bottom: 50),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/ellipse34.png',
                          height: 120,
                        ),
                        margin: EdgeInsets.only(right: 10.0, left: 10.0),
                      ),
                      Flexible(
                          child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hot/Iced',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'Americano',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                'A European approach to an American style coffee, combining the perfect espresso with steaming hot water. Also available with ice.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'NEXT PAGE >',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}
