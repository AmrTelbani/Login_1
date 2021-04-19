import 'package:flutter/material.dart';

class ImageDecoration extends StatelessWidget {
  String Url;
  String Title;
  double width;
  double height;

  ImageDecoration(this.Url, this.Title, this.height, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Url),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.multiply),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(30)),
      child: Container(
        child: Text(
          Title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
