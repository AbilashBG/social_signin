import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../services/authServices.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    print("token is ${FirebaseAuth.instance.currentUser}");
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 260,),
          Container(
              height: 100,
              width:100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 2,color: Colors.white30,),
                color: Colors.white,
              ),
              child:CircleAvatar(
                backgroundImage:NetworkImage(FirebaseAuth.instance.currentUser!.photoURL.toString()),
              )
          ),
          SizedBox(height: 80,),
          Text(FirebaseAuth.instance.currentUser!.displayName.toString(),),
          SizedBox(height: 40,),
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
                  Text("Log Out",
                  )
                ],
              ),
            ),
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerScreen()));
              AuthService().logout();

            },
          ),
          SizedBox(height: 40,),
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
                  Text("Sign Out",
                  )
                ],
              ),
            ),
            onTap: () async {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerScreen()));
              await _googleSignIn.signOut();
              FirebaseAuth.instance.signOut();

            },
          ),
        ],
      ),
    );
  }
}
