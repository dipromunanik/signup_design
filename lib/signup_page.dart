
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:signup_design/custom_text_design.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff71BCE1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
         children: [
           // ignore: avoid_unnecessary_containers
           SizedBox(
             height: 350,
             child: Center(
               child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_1fggr4vt.json'),
             ),
           ),
           TextDesign('User','Username',Icons.person,false),
           const SizedBox(height: 10),
           TextDesign('Email','Email address',Icons.email,false),
           const SizedBox(height: 10),
           TextDesign('Password', 'Enter password', Icons.lock,true,pass: const Icon(Icons.visibility),),
           const SizedBox(height: 10),
           TextDesign('Confirm', 'Confirm password', Icons.lock,false),
           const SizedBox(height: 10),
           TextDesign('Phone', 'Phone number', Icons.call,false),
           const SizedBox(height: 5),
           InkWell(
             onTap: () {},
             child: Container(
                 height: 60,
                 width: 395,
                 child: const Align(
                     alignment: Alignment.center,
                     child: Text(
                       'REGISTRATION',
                       style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 22,letterSpacing: 1),
                     )),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: const Color(0xffCFEF78),
                     boxShadow: const [
                       BoxShadow(
                           color: Colors.black,
                           offset: Offset(4, 4),
                           spreadRadius: 2,
                           blurRadius: 4)
                     ])),
           ),
           const SizedBox(height: 15),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: const [
               Text(
                 "Already have an account?",
                 style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.bold,
                     color: Colors.black),
               ),
               SizedBox(width: 5),
               Text(
                 "Login",
                 style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Colors.black),
               ),
             ],
           )
         ],
        ),
      )
    );
  }
}
