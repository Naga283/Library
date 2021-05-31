import 'package:flutter/material.dart';
import 'authentication.dart';
import 'decoration.dart';
import 'home.dart';
import 'screens/genres.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Book Man',
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 10,
          ),
          Textdec(
            control: _email,
            hint: "Email",
            icon1: Icon(Icons.email),
            show: false,
          ),
          Textdec(
            control: _password,
            hint: "Password",
            icon1: Icon(Icons.lock),
            show: true,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              bool showNavigate = await loginIn(_email.text, _password.text);
              if (showNavigate) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Genres(),
                  ),
                );
              }
              ;
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF3BBB6D),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
