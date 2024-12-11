import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Design', // Title of the app
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
        title: Text('Flutter UI Design'), // Title bar with the app's name
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Welcome message displayed with the Text widget
            Text(
              'Welcome to my Flutter UI Design!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Space between the message and the button
            // ElevatedButton that prints a message to the console when clicked
            ElevatedButton(
              onPressed: () {
                print('Button clicked! Hello, I am Cas!');
              },
              child: Text('Click Me!'),
            ),
            SizedBox(height: 20), // Space between the button and the image
            // Image widget that loads and displays an image from the internet
            Image.network(
              'https://drive.google.com/uc?export=view&id=133_bLN9RDWJC4d1aTUu6UQfIcQSuBRiv',
              width: 300, // Width of the image
            ),
          ],
        ),
      ),
    );
  }
}
