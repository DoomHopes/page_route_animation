import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          child: Text('Press',
              style: TextStyle(
                color: Colors.black,
              )),
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    transitionDuration: Duration(seconds: 2),
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation,
                        Widget child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.elasticInOut);
                      return ScaleTransition(
                        alignment: Alignment.center,
                        scale: animation,
                        child: child,
                      );
                    },
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation) {
                      return SecondPage();
                    }));
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
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'This is second page',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Expanded(
              child: Image.network(
                'https://wsofter.ru/wp-content/uploads/2019/08/1_ilc2aqp5szd1wi0copd1hw.png',
                width: 200,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
