import 'package:flutter/material.dart';
import '../custome/styleguide.dart';
import 'package:provider/provider.dart';
import '../app_state.dart';
import '../model/category.dart';




class GridWidget extends StatefulWidget {

  final Category category;

  const GridWidget({Key key, this.category}) : super(key: key);

  @override
  _GridWidgetState createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x99FFFFFF), width: 3),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: isSelected ? Colors.teal :  Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image(image: AssetImage(widget.category.imagePath),width: 150,height: 150,),

            SizedBox(
              height: 2,
            ),



            Text(
              widget.category.name,
              style: isSelected ? selectedCategoryTextStyle : categoryTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
