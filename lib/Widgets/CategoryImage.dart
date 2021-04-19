import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_1/Objects/Category.dart';

class CategoryImage extends StatelessWidget {
  Category category;
  double width;
  double height;

  CategoryImage(this.category,this.height,this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        height: this.height,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.Url),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.multiply),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Container(
              child: Text(
                category.Title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 20, left: 20),
            ),
            Container(
              child: Text(
                category.Description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 20, left: 20),
            )
          ],
        ));
  }
}
