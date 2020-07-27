import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class TripsScreen extends StatefulWidget {
  @override
  _TripsScreenState createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
            child: Column(
              children: <Widget>[
                Container(child: Text("Search",style: Theme.of(context).textTheme.title,),width: double.infinity,),
                SizedBox(height: 5,),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
