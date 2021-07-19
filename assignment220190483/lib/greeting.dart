import 'package:flutter/material.dart';

//ignore: must_be_immutable
class GreetingScreen extends StatefulWidget {
  late String value;
  GreetingScreen(String text, {required this.value});
  @override
  _State createState() => _State(value);
}

class _State extends State<GreetingScreen> {
  TextEditingController idController = TextEditingController();
  String value;
  _State(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(15),
            child: ListView(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'CRUX FLUTTER',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff2FC4B2),
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'SUMMER GROUP',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff2FC4B2),
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 50,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'welcomes you',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    value,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'have a great journey ahead!!',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(
                height: 80,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff2FC4B2),
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, onPrimary: Color(0xff2FC4B2)),
              ),
            ])));
  }
}
