import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35,top: 135),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              child: Text('Create\nAccount',
                style: TextStyle(color: Colors.white,
                    fontSize: 33
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height* 0.2,
                  right: 35,
                  left: 35,),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
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
