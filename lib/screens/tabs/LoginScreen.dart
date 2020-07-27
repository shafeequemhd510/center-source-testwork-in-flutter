import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
            child: Column(
              children: <Widget>[
                Container(child: Text("Profile",style: Theme.of(context).textTheme.title,),width: double.infinity,),
                SizedBox(height: 5,),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
