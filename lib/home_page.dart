import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_route_animation/bouncy_page_route.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.amberAccent,
          minWidth: 200.0,
          height: 30.0,
          child: const Text(
            'Press',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          onPressed: () {
            Navigator.push(
              context,
              BouncyPageRoute(widget: SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Second Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.amberAccent,
          minWidth: 200.0,
          height: 30.0,
          child: const Text(
            'Press',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          onPressed: () {
            Navigator.push(
              context,
              BouncyPageRoute(widget: ThirdPage()),
            );
          },
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Third Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Image.network(
          'https://wsofter.ru/wp-content/uploads/2019/08/1_ilc2aqp5szd1wi0copd1hw.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
