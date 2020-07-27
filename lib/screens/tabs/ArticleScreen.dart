import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:travel/custome/category_widget.dart';
import 'package:travel/custome/gridWidget.dart';
import 'package:travel/model/category.dart';

class SavedScreen extends StatefulWidget {
  @override
  _SavedScreenState createState() => _SavedScreenState();
}

//Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
class _SavedScreenState extends State<SavedScreen> {
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
                        margin: EdgeInsets.only(left: 38, right: 38),
                        child: Text(
                          "Find anything ",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 38, right: 38),
                        child: Text(
                          "you need for your pets",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: 36,
                      ),

                      /*     Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,

                            child: GridView.count(crossAxisCount: 2,
                                shrinkWrap: true,
                                crossAxisSpacing: 2.0,
                                scrollDirection: Axis.vertical,
                                children: List.generate(categories.length, (index) => callwidgwt(categories)),
                              ),
//                         child: Text("Grid view place"),
                            ),
                      ),*/
                      GridView.builder(
                          shrinkWrap: true,
                          itemCount: categories.length,
                          scrollDirection: Axis.vertical,
                          physics: ScrollPhysics(),
                          gridDelegate:

                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, position) {
                            var category = categories[position];
                            return GridWidget(
                              category: category,
                            );
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget callwidgwt(Category) => CategoryWidget();
}
