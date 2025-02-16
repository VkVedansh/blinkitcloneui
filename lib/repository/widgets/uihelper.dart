import 'package:flutter/material.dart';

class Uihelper {
  //for custom image
  static customImage({required String image, double? size}) {
    return Image.asset("assets/images/$image", height: size);
  }

  static customText(
      {required String text,
      required Color color,
      required fontweight,
      String?
          fontfamily, //String? means fontfamily can be empty or not required
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          color: color,
          fontFamily: fontfamily,
          fontWeight: fontweight),
    );
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontweight,
          color: color),
    );
  }

  static CustomTextField({required TextEditingController controller}) {
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Color(0XFFC5C5C5))),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: "Search 'ice-cream'",
            prefixIcon: Image.asset("assets/images/search.png"),
            suffixIcon: Image.asset("assets/images/mic 1.png"),
            border: InputBorder.none),
      ),
    );
  }
}
