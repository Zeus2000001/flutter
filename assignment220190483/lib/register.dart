import 'package:flutter/material.dart';
import '/greeting.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RegisterScreen> {
  TextEditingController idController = TextEditingController();
  String radioButtonItem = 'ONE';
  bool _switch = false;
  var _batch;
  var id;
  late String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        color: Color(0xff2FC4B2),
                        height: 35,
                        width: 35,
                        alignment: Alignment.center,
                        child: Text(
                          'CRUX FLUTTER SUMMER GROUP',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: idController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ID Number',
                        labelStyle: TextStyle(color: Color(0xff2FC4B2)),
                        hintText: 'Please enter your BITS ID Number',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Color(0xff2FC4B2)),
                        hintText: 'Please enter your password',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Batch',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: DropdownButton(
                        value: _batch,
                        items: [
                          DropdownMenuItem(
                            child: Text("2020"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("2019"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("2018"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("2017"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("2016"),
                            value: 5,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _batch = value;
                          });
                        },
                        hint: Text("Select item"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Recieve regular updates',
                              style: TextStyle(fontSize: 17),
                            )),
                        SizedBox(
                          width: 120,
                        ),
                        Container(
                          child: Switch(
                            value: _switch,
                            onChanged: (value) {
                              setState(() {
                                _switch = value;
                              });
                            },
                            inactiveTrackColor: Colors.grey,
                            activeTrackColor: Color(0xff2FC4B2),
                            activeColor: Color(0xff2FC4B2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Are you excited for this!!',
                          style: TextStyle(fontSize: 17),
                        )),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: id,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem = 'ONE';
                                  id = 1;
                                });
                              },
                            ),
                            Text(
                              'Yes',
                              style: new TextStyle(fontSize: 17.0),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Radio(
                              value: 2,
                              groupValue: id,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem = 'TWO';
                                  id = 2;
                                });
                              },
                            ),
                            Text(
                              'NO',
                              style: new TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                          ])
                    ]),
                    TextButton(
                      onPressed: () {
                        var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new GreetingScreen(
                                  idController.text,
                                  value: idController.text,
                                ));
                        Navigator.of(context).push(route);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff2FC4B2),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Text(
                          'Already have an account?',
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff2FC4B2),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                  ])
            ])));
  }
}
