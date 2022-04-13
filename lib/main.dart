import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = "Choose";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selected,
              style: TextStyle(fontSize: 60),
            ),
            DropdownButton(
                items: [
                  DropdownMenuItem(value: "Hello", child: Text("Hello")),
                  DropdownMenuItem(value: "Flutter", child: Text("Flutter")),
                ],
                onChanged: (value) {
                  setState(() {
                    selected = "value";
                  });
                })
          ],
        ),
      ),
    );
  }
}
