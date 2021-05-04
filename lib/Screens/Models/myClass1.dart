import 'package:flutter/material.dart';
import 'package:inherited_widget_app/Screens/Models/myClass2.dart';

import 'myModel.dart';

class MyClass1 extends StatefulWidget {
  MyClass1({Key? key}) : super(key: key);

  @override
  MyClass1State createState() => MyClass1State();
}

class MyClass1State extends State<MyClass1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(countState.count.toString()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    countState.count++;
                  });

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyClass2()),
                  ).then((value) {
                    setState(() {});
                  });
                },
                child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
