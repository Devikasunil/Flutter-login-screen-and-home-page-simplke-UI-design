import 'package:flutter/material.dart';
import 'package:untitled/screens/home.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Welcome!'),
        ),
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                        ),
                        validator: (value) {
                          // if (_isDataMatched) {
                          //  return null;
                          // } else {
                          //  return 'Error';
                          // }
                          if (value == null || value.isEmpty) {
                            return 'Value is empty';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                        ),
                        validator: (value) {
                          // if (_isDataMatched) {
                          //  return null;
                          // } else {
                          //  return 'Error';
                          // }
                          if (value == null || value.isEmpty) {
                            return 'Value is empty';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          checkLogin(context);
                        } else {
                          print('Data empty');
                        }

                        //checkLogin(context);
                      },
                      icon: Icon(Icons.check),
                      label: Text("Login"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      print('Username & password is matched!');
      //Goto Home
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx)=> ScreenHome()));
      print('Username & Password does not match!');
      //Snackbar
      //final _errorMessage = 'Username and Password does not match!';

      //ScaffoldMessenger.of(ctx)
      // .showSnackBar(SnackBar(content: Text(_errorMessage)));

      //Alert Dialog

      // showDialog(
      // context: ctx,
      // builder: (ctx1) {
      //  return AlertDialog(
      // title: Text('Error'),
      // content: Text(_errorMessage),
      // actions: [TextButton(onPressed: () {}, child: Text('Close'))],
      // );
      // });

      //Show Text
    }
  }
}
