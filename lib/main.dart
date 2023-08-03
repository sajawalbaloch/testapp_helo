import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello App",
      home: HelloPage(),
    );
  }
}

class HelloPage extends StatefulWidget {
  const HelloPage({super.key});

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  Color _screenColor = Colors.white;

  void _changeScreenColor() {
    setState(() {
      _screenColor = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    final random = Random();
    return Color.fromARGB(
      200,
      random.nextInt(200),
      random.nextInt(150),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: _changeScreenColor,
          child: Container(
            color: _screenColor,
            child:  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Hello there',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Tap anywhere for see a magic')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
