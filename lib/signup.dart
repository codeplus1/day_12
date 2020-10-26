import 'package:day_12/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Signup',
                        style: TextStyle(
                            fontSize: 75,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87)),
                    TextSpan(
                        text: '.',
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w600,
                            color: Colors.green))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'USERNAME'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'EMAIL'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'PASSWORD'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'CONFIRM PASSWORD'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26)),
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text('SIGNUP'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlineButton.icon(
                      icon: Icon(FontAwesome.facebook),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26)),
                      // color: Colors.green, //outline button ko color hudaina so color usegarey xaina
                      textColor: Colors.black,
                      onPressed: () {},
                      label: Text(
                          'Sign up With Facebook'), //icon wala button ma (child) hudaina (label) hunxa
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Already Have An Account ',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              )),
                          TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
