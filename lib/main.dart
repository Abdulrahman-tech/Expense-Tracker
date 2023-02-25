import 'package:flutter/material.dart';

import 'tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expense Tracker',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.dark,
            accentColor: Colors.green),
        home: const TabsController());
  }
}
