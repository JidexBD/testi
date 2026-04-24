import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  void _increamentCounter () {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter  App'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('the count is: ',style: TextStyle(fontSize: 40),),
              Text("$_counter", style: TextStyle(fontSize: 30, color: Colors.red),)
            ],
          ),
        ),
        
        floatingActionButton: FloatingActionButton(onPressed: _increamentCounter, child: Icon(Icons.add),backgroundColor: Colors.red,),
      ),
    );
  }
}
