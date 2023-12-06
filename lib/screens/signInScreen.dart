import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/authServices.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black26,
        body: Column(
          children: [
            SizedBox(height: 22,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Let's Onboard",
                ),
              ],
            ),
            SizedBox(height: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sign in to the app using any of",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("given login types for better Experience ",
                ),
              ],
            ),
            SizedBox(
              height: 260,
            ),
            InkWell(
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 36),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/google.png")
                    ),
                    SizedBox(width: 8,),
                    Text("Sign in with Google",
                    )
                  ],
                ),
              ),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerScreen()));
                AuthService().signInWithGoogle();
              },
            ),
            SizedBox(height: 20,),
            InkWell(
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 36),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/facebook.png")
                    ),
                    SizedBox(width: 8,),
                    Text("Sign in with FaceBook",
                    )
                  ],
                ),
              ),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerScreen()));
                AuthService().logout();
              },
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("By Continuing, you are agreeing to our",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Terms of Use",
                ),
                Text(" and",
                ),
                Text(" Privacy Policy",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
