import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'First screen';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: BuildBody(),
      ),
    );
  }
}

class BuildBody extends StatefulWidget {
  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  TextEditingController txtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(" Type something: "),
                new Flexible(
                  child: new TextField(
                    controller: txtController,
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text("Send to second screen"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(txtController.text),
                    ));
              },
            ),
          ],
        ));
  }
}

class SecondScreen extends StatefulWidget {
  final String mydata;
  SecondScreen(this.mydata);
  @override
  _SecondScreenState createState() => _SecondScreenState(this.something);
}

class _SecondScreenState extends State<SecondScreen> {
  String mydata;
  _SecondScreenState(this.mydata);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Container(
          child: Center(
        child: Text(
          mydata,
          style: TextStyle(fontSize: 30),
        ),
      )),
    );
  }
}
