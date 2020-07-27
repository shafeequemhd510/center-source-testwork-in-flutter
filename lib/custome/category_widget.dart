
import 'package:flutter/material.dart';
import '../custome/styleguide.dart';
import 'package:provider/provider.dart';
import '../app_state.dart';

import '../model/category.dart';



class CategoryWidget extends StatefulWidget {
  final Category category;

  const CategoryWidget({Key key, this.category}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
     /* final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;*/

    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x99FFFFFF), width: 3),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: isSelected ? Colors.teal :  Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image(image: AssetImage(widget.category.imagePath),width: 250,height: 180,),

            SizedBox(
              height: 2,
            ),
            
            Icon(
              widget.category.icon,
              color: isSelected ? Colors.white : Colors.teal,
              size: 20,
            ),
            SizedBox(
              height: 3,
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
