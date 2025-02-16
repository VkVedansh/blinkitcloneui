import 'package:blinkitclone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  var diwalisale = [
    {"img": "image16.png", "name": "Lights, Diyas & Candles"},
    {"img": "image17.png", "name": "Diwali Gifts"},
    {"img": "image18.png", "name": "Appliances & Gadgets"},
    {"img": "image19.png", "name": "Home & Living"},
  ];
  var moreoption = [
    {"img": "image20.png", "name": "Golden Glass \n Wooden Lid Candle"},
    {"img": "image21.png", "name": "Royal Gulab Jamun \n By Bikano"},
    {"img": "image23.png", "name": "Bikaji Bhujia \n Bhujia"},
  ];

  Homescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(children: [
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0XFFEC0505)),
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
                          color: Colors.white,
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
                        color: Colors.white,
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
                  color: Colors.white,
                  fontweight: FontWeight.bold,
                  fontsize: 11,
                ),
                Uihelper.customText(
                  text: "Sujal Dave, Ratanada, Jodhpur (Raj)",
                  color: Colors.white,
                  fontweight: FontWeight.normal,
                  fontsize: 11,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.expand_more_outlined,
                      color: Colors.white,
                    ))
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
            child: Uihelper.CustomTextField(controller: searchcontroller)),
      ]),
      SizedBox(
        height: 1,
        width: double.infinity,
      ),
      Container(
          height: 196,
          width: double.infinity,
          color: Color(0XFFEC0505),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 11,
                  ),
                  Uihelper.customImage(image: "crackers1.png"),
                  Uihelper.customImage(image: "crackers2.png"),
                  SizedBox(
                    width: 11,
                  ),
                  Uihelper.CustomText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                      fontfamily: "Bold"),
                  SizedBox(
                    width: 11,
                  ),
                  Uihelper.customImage(image: "crackers1.png"),
                  Uihelper.customImage(image: "crackers2.png"),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 1, bottom: 5),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                            height: 93,
                            width: 86,
                            decoration: BoxDecoration(
                                color: Color(0XFFEAD3D3),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Uihelper.CustomText(
                                    text: diwalisale[index]["name"].toString(),
                                    color: Colors.black,
                                    fontweight: FontWeight.normal,
                                    fontsize: 10),
                                Uihelper.customImage(
                                    image: diwalisale[index]["img"].toString())
                              ],
                            )),
                      );
                    },
                    itemCount: diwalisale.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              )
            ],
          )),
      SizedBox(
        height: 15,
      ),
      Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 108,
                      width: 93,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Uihelper.customImage(
                          image: moreoption[index]["img"].toString()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Uihelper.CustomText(
                        text: moreoption[index]["name"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 8),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(
                      children: [
                        Uihelper.customImage(image: "timer.png"),
                        Uihelper.CustomText(
                            text: "16 MINS",
                            color: Colors.black,
                            fontweight: FontWeight.normal,
                            fontsize: 10)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(
                      children: [
                        Uihelper.customImage(image: "rupees.png"),
                        Uihelper.CustomText(
                            text: "79",
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontweight: FontWeight.bold,
                            fontsize: 15)
                      ],
                    ),
                  )
                ],
              );
            },
            itemCount: moreoption.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    ]));
  }
}
