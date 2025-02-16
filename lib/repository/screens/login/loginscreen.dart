import 'package:blinkitclone/repository/screens/bottomnavigation/bottomnavscreen.dart';
import 'package:blinkitclone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/onboarding.png"),
            SizedBox(
              height: 10,
            ),
            Uihelper.customImage(image: "blinkitmain.png", size: 112),
            SizedBox(
              height: 10,
            ),
            Uihelper.customText(
                text: "India’s last minute app",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 30),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 1,
              child: Container(
                height: 250,
                width: 345,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Uihelper.customText(
                        text: "Vedansh Kumar",
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 15),
                    Uihelper.customText(
                        text: "12345XXXX",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.w300,
                        fontsize: 13),
                    SizedBox(
                      height: 45,
                    ),
                    SizedBox(
                      height: 42,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bottomnavscreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Uihelper.customText(
                                text: "Login  with",
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 21),
                            SizedBox(
                              width: 5,
                            ),
                            Uihelper.customImage(image: "zomato.png", size: 15),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Uihelper.customText(
                        text: "or login with phone number",
                        color: Color(0XFF269237),
                        fontweight: FontWeight.w500,
                        fontsize: 13)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
