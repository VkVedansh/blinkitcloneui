import 'package:blinkitclone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchcontroleer = TextEditingController();
  var gloseryKitchen = [
    {"img": "image1.png", "name": "Vegetables & Fruits"},
    {"img": "image2.png", "name": "Atta, Dal & Rice"},
    {"img": "image3.png", "name": "Oil, Ghee & Masala"},
    {"img": "image4.png", "name": "Dairy, Bread & Milk"},
    {"img": "image5.png", "name": "Biscuits & Bakery"},
  ];
  var secondgloseryKitchen = [
    {"img": "image6.png", "name": "Dry Fruits & Cereals"},
    {"img": "image7.png", "name": "Kitchen & Appliances"},
    {"img": "image8.png", "name": "Tea & Coffees"},
    {"img": "image9.png", "name": "Ice Creams & much more"},
    {"img": "image10.png", "name": "Noodles & Packet Food"},
  ];
  var snacksanddrinks = [
    {"img": "image11.png", "name": "Chips & Namkeens"},
    {"img": "image12.png", "name": "Sweets & Chocalates"},
    {"img": "image13.png", "name": "Drinks & Juices"},
    {"img": "image14.png", "name": "Sauces & Spreads"},
    {"img": "image15.png", "name": "Beauty & Cosmetics"}
  ];

  CategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
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
                    onPressed: () {}, icon: Icon(Icons.expand_more_outlined))
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
      SizedBox(
        height: 11,
      ),
      Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Uihelper.CustomText(
              text: "Grocery & Kitchen",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontfamily: "Bold",
              fontsize: 14)
        ],
      ),
      SizedBox(
        height: 10,
      ),

                   //The flex property allows you to control how space is distributed among multiple Expanded widgets.
                   //It works like weight distribution: a higher flex value means the widget takes more space compared to others with a lower flex value.
      Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)),
                      child: Uihelper.customImage(
                          image: gloseryKitchen[index]["img"].toString()),
                    ),
                  ),
                  SizedBox(
                    width: 71,
                    child: Center(
                      child: Uihelper.CustomText(
                          text: gloseryKitchen[index]["name"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10),
                    ),
                  )
                ],
              );
            },
            itemCount: gloseryKitchen.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Expanded(
        flex:
            2, //extra space aarha tha us ko remove kiya , 3 matlab 3% of screen
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)),
                      child: Uihelper.customImage(
                          image: secondgloseryKitchen[index]["img"].toString()),
                    ),
                  ),
                  SizedBox(
                    width: 71,
                    child: Center(
                      child: Uihelper.customText(
                          text: secondgloseryKitchen[index]["name"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10),
                    ),
                  )
                ],
              );
            },
            itemCount: secondgloseryKitchen.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
      Row(
        children: [
          Uihelper.CustomText(
              text: "Snacks & Drinks",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 14,
              fontfamily: "Bold")
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Expanded(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)),
                      child: Uihelper.customImage(
                          image: snacksanddrinks[index]["img"].toString()),
                    ),
                  ),
                  SizedBox(
                    width: 71,
                    child: Center(
                      child: Uihelper.CustomText(
                          text: snacksanddrinks[index]["name"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10),
                    ),
                  )
                ],
              );
            },
            itemCount: snacksanddrinks.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    ]));
  }
}
