import 'package:flutter/material.dart';
import 'package:inherited_widget_app/Screens/Models/myClass1.dart';

import 'Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyClass1(),
    );
  }
}
