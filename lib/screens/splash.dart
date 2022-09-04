import 'package:flutter/material.dart';
import 'dart:async';

import 'package:untitled/screens/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Text('Art Gallery'),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          child: Center(
            child: Image(image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipOUiVH9tSoeovENL3pZAC90JHryQFQ-D-blEPSi=w1080-h608-p-no-v0'),
            width: MediaQuery.of(context).size.width*6,
              height: MediaQuery.of(context).size.height*4,
            )
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => ScreenLogin()));
  }
}
