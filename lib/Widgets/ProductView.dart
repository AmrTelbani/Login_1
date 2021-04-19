import 'package:flutter/material.dart';
import 'package:ui_1/Objects/Product.dart';

class ProductView extends StatelessWidget {
  Product product;
  double width;
  double height;

  ProductView(this.product, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        height: this.height,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow:  [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]
        ),
        child: Column(
          children: [
            Container(
              width: this.width,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage(product.Url),
                    fit: BoxFit.cover),
              ),
            ),
            Text(product.Title),
            Text(
              "${product.Price}AED",
              style: TextStyle(fontWeight: FontWeight.w700),
            )
          ],
        ));
  }
}
