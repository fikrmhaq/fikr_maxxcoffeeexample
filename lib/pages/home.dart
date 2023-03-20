import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:newproject/models/menu.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final CarouselController _controller = CarouselController();
  List<Menu> menu = [
    Menu(
        name: "Americano",
        desc: 'European coffee that approaches the American style of coffee',
        url: 'assets/americanoG.png'),
    Menu(
        name: "Cream Frappe",
        desc: 'One of Maxx Coffee’s signature. A blend of vanilla, milk',
        url: 'assets/frappeG.png')
  ];

  void initState() {
    super.initState();
    Timer.periodic(new Duration(seconds: 2), (timer) {
      setState(() {
        _controller.nextPage();
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                Text(
                  _selectedIndex.toString(),
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            height: 400,
            child: Stack(
              children: [
                Image.asset(
                  'assets/Ellipse34G.png',
                  width: 300,
                ),
                Builder(
                  builder: (context) {
                    final double height = MediaQuery.of(context).size.height;
                    return CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                        height: height,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        // autoPlay: false,
                      ),
                      items: menu
                          .map((item) => Container(
                                child: Center(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(item.url, height: 300),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      constraints:
                                          BoxConstraints(maxWidth: 230),
                                      child: Column(
                                        children: [
                                          Text(item.name,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20)),
                                          Text(item.desc,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                              ))
                          .toList(),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    height: 110,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/promo1.png'),
                  ),
                  Container(
                    height: 110,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/promo2.png'),
                  )
                ],
              ),
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Catalogue',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: (int index) {
          // setState(() {
          //   _selectedIndex = index;
          // });
          if (index == 0) {
            Navigator.pushNamed(
              context,
              '/',
            );
          } else if (index == 1) {
            Navigator.pushNamed(
              context,
              '/catalogue',
            );
          } else if (index == 2) {
            Navigator.pushNamed(
              context,
              '/details',
            );
          }
        },
      ),
    );
  }
}
