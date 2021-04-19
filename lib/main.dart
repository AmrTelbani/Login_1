import 'package:flutter/material.dart';
import 'package:ui_1/Objects/Product.dart';
import 'package:ui_1/Widgets/CategoryImage.dart';
import 'package:ui_1/Widgets/ProductView.dart';

import 'Objects/Category.dart';
import 'Widgets/ImageDecoration.dart';
import 'Widgets/ProductViewFull.dart';
import 'Widgets/TextSty.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Colors.blue.withOpacity(0.9),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopSlider(),
              CatagoriesSlider(),
              TopSelling(),
              RecentAdded()
            ],
          ),
        ),
      ),
    );
  }
}

class TopSlider extends StatelessWidget {
  List<Category> Categorys = [
    Category.full("Shopping", "dummy text", "assets/images/food.jpg"),
    Category.full("Shopping", "dummy text", "assets/images/food2.jpg"),
    Category.full("Shopping", "dummy text", "assets/images/food3.jpg"),
    Category.full("Shopping", "dummy text", "assets/images/food4.jpg"),
    Category.full("Shopping", "dummy text", "assets/images/food5.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: Categorys.map((e) {
            return CategoryImage(e, 150, 300);
          }).toList(),
        ),
      ),
    );
  }
}

class CatagoriesSlider extends StatelessWidget {
  List<Category> Categorys = [
    Category.breif("Food", "assets/images/food.jpg"),
    Category.breif("Food", "assets/images/food2.jpg"),
    Category.breif("Food", "assets/images/food3.jpg"),
    Category.breif("Food", "assets/images/food4.jpg"),
    Category.breif("Food", "assets/images/food5.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextSty("Categories"),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Categorys.map((e) {
                return ImageDecoration(e.Url, e.Title, 100, 150);
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}

class TopSelling extends StatelessWidget {
  List<Product> Products = [
    Product.simple("assets/images/food.jpg", "Food1", 20),
    Product.simple("assets/images/food2.jpg", "Food2", 30),
    Product.simple("assets/images/food3.jpg", "Food3", 50),
    Product.simple("assets/images/food4.jpg", "Food4", 100),
    Product.simple("assets/images/food5.jpg", "Food5", 180)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextSty("Top Selling"),
            Container(
              child: Text(
                "See more",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black26),
              ),
              margin: EdgeInsets.only(left: 120),
            )
          ],
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Products.map((e) {
                return ProductView(e, 120, 120);
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}

class RecentAdded extends StatelessWidget {
  List<Product> Products = [
    Product.full("assets/images/food.jpg", "Food1", 20,
        "this is description of the product"),
    Product.full("assets/images/food2.jpg", "Food2", 100,
        "this is description of the product"),
    Product.full("assets/images/food3.jpg", "Food3", 200,
        "this is description of the product"),
    Product.full("assets/images/food4.jpg", "Food4", 300,
        "this is description of the product"),
    Product.full("assets/images/food5.jpg", "Food5", 89,
        "this is description of the product")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextSty("Recent Added"),
            Container(
              child: Text(
                "See more",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black26),
              ),
              margin: EdgeInsets.only(left: 95),
            )
          ],
        ),
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: Products.map((e) {
                return ProductViewFull(e, 120, 120);
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
