import 'package:blinkitclone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Shopscreen extends StatelessWidget {
  TextEditingController searchcontroleer = TextEditingController();

  Shopscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0XFFF7CB45)),
              child: Column(
                children: [
                  SizedBox(
                    height: 65,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Uihelper.customText(
                              text: "Blink it",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontfamily: "Bold",
                              fontsize: 16),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Uihelper.customText(
                            text: "16 minutes",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 22,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                top: 95,
                left: 5,
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Uihelper.customText(
                      text: "Home - ",
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                      fontsize: 11,
                    ),
                    Uihelper.customText(
                      text: "Sujal Dave, Ratanada, Jodhpur (Raj)",
                      color: Colors.black,
                      fontweight: FontWeight.normal,
                      fontsize: 11,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.expand_more_outlined))
                  ],
                )),
            Positioned(
              right: 25,
              bottom: 80,
              child: CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    "https://static.vecteezy.com/system/resources/thumbnails/035/857/779/small/people-face-avatar-icon-cartoon-character-png.png"),
              ),
            ),
            Positioned(
                top: 130,
                left: 16,
                child: Uihelper.CustomTextField(controller: searchcontroleer)),
          ]),
          Positioned(
              top: -260,
              left: 130,
              child: Uihelper.customImage(image: "shoping.png", size: 140)),
          Positioned(
              top: 328,
              left: 96,
              child: Uihelper.customText(
                  text: "Reordering will be easy",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontfamily: "Bold",
                  fontsize: 16)),
          Positioned(
              top: 350,
              left: 66,
              child: Column(
                children: [
                  Uihelper.customText(
                      text: "Items you order will show up here so you can buy",
                      color: Colors.black,
                      fontweight: FontWeight.normal,
                      fontfamily: "Regular",
                      fontsize: 10),
                  Uihelper.customText(
                      text: "them again easily.",
                      color: Colors.black,
                      fontweight: FontWeight.normal,
                      fontfamily: "Regular",
                      fontsize: 10)
                ],
              ))
        ],
      ),
    );
  }
}
