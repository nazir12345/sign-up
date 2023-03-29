import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35,top: 135),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              child: Text('Welcome\nBack',
              style: TextStyle(color: Colors.white,
              fontSize: 33
              ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height* 0.3,
                right: 35,
                  left: 35,),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Email Address",
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                         // hintText: "Email Address",
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.black87
                        ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        },
                            child: Text('Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b),
                            ),
                            )
                        ),
                        TextButton(onPressed: (){

                        },
                            child: Text('Forget Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Color(0xff4c505b),
                              ),
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
