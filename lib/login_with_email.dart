import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool password_visible = false;
  bool remember_me = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 77,
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
            decoration: BoxDecoration(
                color: Colors.greenAccent.shade100.withOpacity(0.7),
                shape: BoxShape.circle),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black87),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(top: 35),
            child: Text("Sign in", style: TextStyle(color: Colors.black)),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 42),
              Container(
                height: 130,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.amber.shade50),
                child: Image.asset('assets/7kravelogo.png', height: 100),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Container(
                    height: 55,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                        color: Colors.lightGreen.shade100.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Enter your email',
                          hintStyle:
                              TextStyle(color: Colors.blueGrey.shade300)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 55,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                        color: Colors.lightGreen.shade100.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: TextFormField(
                        obscureText: !password_visible,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.blueGrey.shade300,
                            ),
                            suffixIcon: IconButton(
                              color: Colors.grey,
                              icon: Icon(
                                size: 22,
                                password_visible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  password_visible = !password_visible;
                                });
                              },
                            ))),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: remember_me,
                              onChanged: (value) {
                                setState(() {
                                  remember_me = value!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          Text(
                            'Remember Me',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.redAccent.shade700, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Code of Actions performed by clicking on continue with google
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        backgroundColor: Colors.green.shade800,
                        padding: EdgeInsets.symmetric(
                            horizontal: 167, vertical: 19),
                    ),
                  ),

                  SizedBox(height: 7,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                color: Colors.green.shade900,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 180),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12),
                          children: [
                            TextSpan(
                                text: 'By clicking "Sign in" above, you agree to 7krave\'s ',
                                style: TextStyle(fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                              text: 'Terms & \nCondition ',
                              style: TextStyle(color: Colors.brown.shade300, fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text: 'and ',
                            ),
                            TextSpan(
                                text: 'Privacy Policy.',
                                style: TextStyle(color: Colors.brown.shade300, fontWeight: FontWeight.w500)
                            )
                          ]
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
