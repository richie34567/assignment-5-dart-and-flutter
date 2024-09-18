import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to the App!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20), // Space between widgets
            ElevatedButton(
              onPressed: () {
                print('Button Pressed!');
              },
              child: Text('Press Me'),
            ),
            SizedBox(height: 20), // Space between widgets
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
