import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;
  int b = 0;
  int sum = 0;

  void _sum() {
    setState(() {
      sum = a + b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Native'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Sum... $sum',
                style: const TextStyle(fontSize: 30),
              ),
              TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    a = int.tryParse(value) ?? 0;
                  }),
              TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    b = int.tryParse(value) ?? 0;
                  }),
              ElevatedButton(onPressed: _sum, child: const Text('Sum'))
            ]),
          ),
        ));
  }
}
