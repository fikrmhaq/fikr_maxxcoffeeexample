import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalogue'),
        backgroundColor: Colors.white,
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        toolbarTextStyle: TextStyle(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 85,
            child: Column(
              children: [
                Image.asset(
                  'assets/group94.png',
                  height: 50,
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: 85,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/coffeec.png',
                        height: 320,
                      ),
                      Container(
                          child: Text(
                        'DRINKS',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ))
                    ],
                  ),
                ),
                Container(
                  width: 85,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/foodc.png',
                        height: 320,
                      ),
                      Container(
                          child: Text(
                        'FOOD',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ))
                    ],
                  ),
                ),
                Container(
                  width: 85,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/merchandisec.png',
                        height: 320,
                      ),
                      Container(
                          child: Text(
                        'MERCHANDISE',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
