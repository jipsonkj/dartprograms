import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LottieExpansionTileCardDemo(),
    );
  }
}

class LottieExpansionTileCardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie ExpansionTileCard Demo'),
      ),
      body: Card(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
            ),
            Divider(),
            ExpansionTile(
              title: Text('Expandable Content'),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Lottie.asset(
                    'assets/images/animation_lottie.json', // Replace with your Lottie animation file path
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
                ListTile(
                  title: Text('Session 1'),
                ),
                ListTile(
                  title: Text('Session 2'),
                ),
                ListTile(
                  title: Text('Session 3'),
                ),
                ListTile(
                  title: Text('Session 4'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}