// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            child: Image.network("https://i.imgur.com/saBPnao.png"),
            height: 35,
          ),
          backgroundColor: Color.fromARGB(255, 43, 43, 43),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                ElevatedCardExample(),
                SizedBox(height: 10),
                ElevatedCardExample()
              ]),
        ),
      ),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 400,
          height: 70,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Color.fromARGB(255, 43, 43, 43)),
            child: Align(
                alignment: Alignment(-0.75, 0),
                child: Row(
                  children: [
                    
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

/*

*/