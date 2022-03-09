import 'package:flutter/material.dart';
import './Widgets/Material Components/dropdown_button.dart';
import './Widgets/Layout/baseline.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool _light = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _light ? ThemeMode.light : ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Library'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('A switch to change from Light to Dark.'),
              Switch(
                  value: _light,
                  onChanged: (toggle) {
                    setState(() {
                      _light = toggle;
                    });
                  }),
              MyDropdownButton(),
              MyBaseline()
            ],
          ),
        ),
      ),
    );
  }
}
