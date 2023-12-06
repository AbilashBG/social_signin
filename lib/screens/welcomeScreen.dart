import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/authServices.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 260,),
          InkWell(
            child: Container(
                height: 46,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent,
                ),
                child:Center(
                  child:  Text("START",
                  ),
                )
            ),
            onTap: (){

              Future.delayed(Duration(milliseconds: 100),(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>AuthService().handleAuthState()));
              });
            },
          ),
        ],
      ),
    );
  }
}
