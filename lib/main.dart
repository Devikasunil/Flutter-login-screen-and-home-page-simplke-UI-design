import 'package:flutter/material.dart';
import 'package:untitled/screens/splash.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ScreenSplash(),
    );
  }
}
