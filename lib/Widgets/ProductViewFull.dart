import 'package:flutter/material.dart';
import 'package:ui_1/Objects/Product.dart';

class ProductViewFull extends StatelessWidget {
  Product product;
  double width;
  double height;

  ProductViewFull(this.product, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
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
        child: Row(
          children: [
            Container(
              width: 80,
              height: 110,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(product.Url), fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(top: 15, left: 5),
                  child: Text(
                    product.Title,
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(top: 5, left: 5),
                  child: Text(
                    product.Description,
                    style: TextStyle(color: Colors.black45, fontSize: 18),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "${product.Price}AED",
                style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
