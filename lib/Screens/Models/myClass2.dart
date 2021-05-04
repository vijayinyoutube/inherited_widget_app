import 'package:flutter/material.dart';

import 'myModel.dart';

class MyClass2 extends StatefulWidget {
  MyClass2({Key? key}) : super(key: key);

  @override
  MyClass2State createState() => MyClass2State();
}

class MyClass2State extends State<MyClass2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
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
                  Navigator.pop(
                    context,
                  );
                },
                child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
