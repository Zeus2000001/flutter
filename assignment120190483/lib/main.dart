import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('hello'),
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    width: 175,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Text('C1'),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            padding: const EdgeInsets.all(14.0),
                            width: 175,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                            ),
                            child: Text('c2r1')),
                        Container(
                            padding: const EdgeInsets.all(14.0),
                            width: 175,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                            ),
                            child: Text('c2r2')),
                        Container(
                          padding: const EdgeInsets.all(14.0),
                          width: 175,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text('c2r3'),
                        ),
                      ]),
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    width: 175,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                    child: Text('c3'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    width: 175,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                    ),
                    child: Text('c4'),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(18.0),
                              width: 175,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.green,
                              ),
                              child: Text('r1c1'),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: const EdgeInsets.all(18.0),
                              width: 175,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                              ),
                              child: Text('r1c2'),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(18.0),
                          width: 575,
                          height: 230,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                          ),
                          child: Text('r2'),
                        ),
                      ])
                ])));
  }
}
