import 'package:flutter/material.dart';
import 'greeting.dart';
import 'register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Best App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController idController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final value;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
            TextButton(
              onPressed: () {
                var route = new MaterialPageRoute(
                    builder: (BuildContext context) => new GreetingScreen(
                          idController.text,
                          value: idController.text,
                        ));
                Navigator.of(context).push(route);
              },
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff2FC4B2),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                height: 45,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextButton(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff2FC4B2),
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                )),
            SizedBox(
              height: 45,
              width: 45,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Does not have account?',
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff2FC4B2),
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                )
              ],
            ))
          ]),
    );
  }
}
