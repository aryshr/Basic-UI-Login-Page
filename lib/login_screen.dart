import 'package:first_app_ui/login_with_email.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 87,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20.0, top: 36.0),
            decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(23)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 30)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.lightBlue.shade50),
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/7kravelogo.png'),
            height: 200,
          ),
          Container(
              margin: EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600,
                    padding:
                        EdgeInsets.symmetric(horizontal: 106, vertical: 17)),
                child: Text("Continue with Email",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
              )),
          Container(
              margin: EdgeInsets.only(top: 20.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Code of Actions performed by clicking on continue with apple
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 94, vertical: 17)),
                icon: Image.asset('assets/apple_logo.jpg', height: 20),
                label: Text("Continue with Apple",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              )),
          Container(
              margin: EdgeInsets.only(top: 20.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Code of Actions performed by clicking on continue with google
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    padding:
                        EdgeInsets.symmetric(horizontal: 91, vertical: 17)),
                icon: Image.asset('assets/google_logo.png', height: 18),
                label: Text("Continue with Google",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              )),
          Container(
              margin: EdgeInsets.only(top: 20.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Code of Actions performed by clicking on continue with google
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                    padding:
                        EdgeInsets.symmetric(horizontal: 81, vertical: 17)),
                icon: Image.asset('assets/fb_logo.png', height: 18),
                label: Text("Continue with Facebook",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              )),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          SizedBox(height: 70),
          Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  children: [
                    TextSpan(
                        text:
                            'By clicking "Continue with Email/Appple/Google/Facebook"\nabove, you agree to 7krave\'s ',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                      text: 'Terms & Condition ',
                      style: TextStyle(
                          color: Colors.brown.shade300,
                          fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: 'and ',
                    ),
                    TextSpan(
                        text: 'Privacy\n Policy.',
                        style: TextStyle(
                            color: Colors.brown.shade300,
                            fontWeight: FontWeight.w500))
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
