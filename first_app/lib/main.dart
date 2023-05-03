import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter App'),
      ),
      body: const Center(
          child: EnterApp(),
      ),
    );
  }
}

class EnterApp extends StatelessWidget{
  const EnterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
        '👋 Hi, I’m @PhucEnterdev I’m currently learning at Can Tho University. '
        'I long to become an Mobile developer and FullStack Developer in the future. '
        'I\'m looking to collaborate on with your company',
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.justify,
      overflow: TextOverflow.visible,
      textScaleFactor: 1.5,
      style: TextStyle(
        color: Colors.white,
        backgroundColor: Colors.blue,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontFamily: 'Times New Roman',
        wordSpacing: 5,
        letterSpacing: 10,
        decoration: TextDecoration.lineThrough,
      ),
    );
  }
}