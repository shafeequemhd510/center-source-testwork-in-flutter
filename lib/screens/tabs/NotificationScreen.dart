import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class InboxScreen extends StatefulWidget {
  @override
  _InboxScreenState createState() => _InboxScreenState();
}
//Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
            child: Column(
              children: <Widget>[
                Container(child: Text("Notification",style: Theme.of(context).textTheme.title,),width: double.infinity,),
                SizedBox(height: 5,),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
