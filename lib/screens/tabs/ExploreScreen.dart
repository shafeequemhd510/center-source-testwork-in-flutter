import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../../custome/category_widget.dart';
import '../../model/category.dart';

import '../../app_state.dart';
import 'ArticleScreen.dart';




class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFF5F4),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Column(

                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 38,right: 38),
                        child: Text(
                          "Hi, Ferran",
                          style: TextStyle(fontSize: 40),
                        ),
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 38,right: 38),
                        child: Text(
                            'Check out the new products, groups, events, places and more!',
                            style: TextStyle(fontSize: 16)),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Container(child: Row(
                        children: <Widget>[

                          Container(child: Image(image: AssetImage('images/boy.jpg'),),width: 80,height: 50,decoration: BoxDecoration(

                            borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue),),
                          SizedBox(
                            width:3,
                          ),
                          Text('Lola is lost in your neighborhood!Help us find her!',style: TextStyle(color: Color(0xffFFFFFF)),),
                        ],
                      ),
                        margin: EdgeInsets.only(left: 38, top:0, right: 38, bottom:0) ,
                        width: 425,
                        height: 76,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),color: Color(0xff00B7B7),),

                      ),
                      SizedBox(height: 30,),
                      Container(child: Row(

                        children: <Widget>[
                          Text("WALK GROUPS"),
                          Spacer(),
                          RaisedButton(child: Text('See All'),color: Color(0xffEFF5F4),onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SavedScreen()),
                            );
                          })
                        ],
                      ),
                      padding: EdgeInsets.only(left: 38,right: 38),),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 24),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[for (final category in categories) CategoryWidget(category: category)],
                            ),
                          ),


                      ),




                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
