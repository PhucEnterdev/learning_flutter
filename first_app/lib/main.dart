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
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print("Click me");
          },
        ),
        title: const Text('My App'),
      ),
      body: const Center(
        /*** Text */
        // child: Text('Hello Flutter Hello Hello',
        //   overflow: TextOverflow.ellipsis,
        //   maxLines: 1,
        //   style: TextStyle(
        //     fontSize: 32,
        //     color: Colors.white,
        //     fontWeight: FontWeight.bold,
        //     backgroundColor: Colors.lightBlue,
        //   ),
        // ),
        /** Image*/
        // child: Image.network('https://res.cloudinary.com/ddfy40mji/image/upload/v1682734114/sharevideoonline/v3fz1jtmouixowzgw2kj.jpg'),
        /** Button*/
        // child: TextButton(
        //   // child: const Text('Click me'),
        //   child: Image.network('https://res.cloudinary.com/ddfy40mji/image/upload/v1682734114/sharevideoonline/v3fz1jtmouixowzgw2kj.jpg'),
        //   onPressed: (){
        //     print('Click me please');
        //   },

        /*** TextButton.icon*/
        // child: TextButton.icon(
        //     onPressed: () {
        //       print('This is icon');
        //     },
        //     icon: const Icon(Icons.favorite),
        //     label: const Text('This is icon')),

        /** ElevatedButton*/
        // child: ElevatedButton(
        //     onPressed: () {
        //       print('This is icon');
        //     },
        //     child: const Text('This is icon')),

        /** ElevatedButton.icon*/
        // child: ElevatedButton.icon(
        //     onPressed: () {
        //       print('This is icon');
        //     },
        //     icon: const Icon(Icons.favorite),
        //     label: const Text('This is icon')),

        /** Text multi style*/
        child: Text.rich(
          TextSpan(text: 'Hi',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        ),
      ),
    );
  }
}
