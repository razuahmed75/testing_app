// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedValues;
  List<dynamic> Country = <String>[
    "Bangladesh",
    "India",
    "Canada",
    "Japan",
    "China",
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating Action Button"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: _selectedValues,
                hint: Text("Select Country"),
                items: [
                  for (var i = 0; i < Country.length; i++)
                    DropdownMenuItem(
                      value: i,
                      child: Text(Country[i]),
                    ),
                ],
                onChanged: (e) {
                  setState(() {});
                  _selectedValues = e;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
