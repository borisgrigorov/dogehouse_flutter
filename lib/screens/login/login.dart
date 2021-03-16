import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import '../../resources/palette.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Center(
                  child: Image.asset(
                    "Assets/logo.png",
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
                SizedBox(height: 25.0),
                Text(
                  "Taking voice conversations to the moon 🚀",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 17.0),
                ),
              ],
            ),
            Column(
              children: [
                SignInButton(
                  Buttons.GitHub,
                  onPressed: () => null,
                  padding: EdgeInsets.all(15.0),
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SignInButton(
                  Buttons.Twitter,
                  onPressed: () => null,
                  padding: EdgeInsets.all(15.0),
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
