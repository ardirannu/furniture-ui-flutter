import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_furniture/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FIND TOUR MOST",
                      style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontSize: 45,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -15),
                      child: Text(
                        "FIT FURNITURE",
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontSize: 45,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 30, // Background color
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('assets/images/face.png'), // Replace with your image asset path
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/search.png',
                    width: 24,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      decoration: InputDecoration(
                        hintText: "What are you looking for?",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.195,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CLASSIC BLACK",
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontSize: 35,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -10),
                        child: Text(
                          "NOIR CHAIR",
                          style: TextStyle(
                            fontFamily: 'BebasNeue',
                            fontSize: 35,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFFCC0A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // Atur radius sesuai kebutuhan
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 15)
                              ),
                              onPressed: () {
                                //
                              }, 
                              child: Text(
                                "80% Off",
                                style: TextStyle(
                                  fontFamily: 'NotoSans',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "BEST OFFER!!",
                            style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.465,
                  top: -MediaQuery.of(context).size.width * 0.07,
                  child: Image.asset(
                      'assets/images/baby-on-chair.png',
                      width: MediaQuery.of(context).size.width * 0.49,
                      fit: BoxFit.cover,
                    ),
                ),
              ],
            ),
            const SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                tagButton(text: "All"),
                tagButton(text: "Chair", textColor: Colors.black, backgroundColor: const Color.fromARGB(255, 238, 238, 238)),
                tagButton(text: "Table", textColor: Colors.black, backgroundColor: const Color.fromARGB(255, 238, 238, 238)),
                tagButton(text: "Bed", textColor: Colors.black, backgroundColor: const Color.fromARGB(255, 238, 238, 238)),
              ],
            ),
            const SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: controller.products.sublist(controller.products.length ~/ 2).map((product) {
                    return cardProduct(
                      title: product['title']!,
                      price: product['price']!,
                      imageUrl: product['imageUrl']!,
                      tag: product['tag']!,
                    );
                  }).toList(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: controller.products.sublist(0, controller.products.length ~/ 2).map((product) {
                    return cardProduct(
                      title: product['title']!,
                      price: product['price']!,
                      imageUrl: product['imageUrl']!,
                      tag: product['tag']!,
                    );
                  }).toList(),
                ),
              ],
            ),

          ],
      )
    );
  }
}

Widget tagButton({
  required String text,
  Color textColor = const Color(0xFFFFCC0A),
  Color backgroundColor = const Color.fromARGB(255, 0, 0, 0),
  double widthFactor = 0.20,
}) {
  return Builder(
    builder: (context) {
      return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * widthFactor,
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      );
    },
  );
}

Widget cardProduct({
  required String title,
  required String price,
  required String imageUrl,
  required String tag,
}) {
  return Builder(
    builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Get.toNamed(
              Routes.DETAIL, 
              arguments: {
                'title': title,
                'price': price,
                'imageUrl': imageUrl,
                'tag': tag,
              }
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imageUrl,
                    width: MediaQuery.of(context).size.width * 0.425,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.15),
                    child: Image.asset(
                      'assets/images/heart.png',
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            '\$ $price',
            style: TextStyle(
              fontFamily: 'BebasNeue',
              fontSize: 35,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'NotoSans',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 145, 145, 145),
            ),
          ),
          SizedBox(height: 25,),
        ],
      );
    },
  );
}


