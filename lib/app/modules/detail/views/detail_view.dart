import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(controller.imageUrl), // Replace with your image path
                fit: BoxFit.cover, // Adjusts the image fit
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      width: 50,
                      height: 50,
                      color: Colors.black.withOpacity(0.20),
                      child: Image.asset(
                        'assets/images/left.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: 50,
                    height: 50,
                    color: Colors.black.withOpacity(0.20),
                    child: Image.asset(
                      'assets/images/heart.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -60),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(45), topRight: Radius.circular(45))
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  tagButton(text: controller.tag, textColor: Colors.black, backgroundColor: Color.fromARGB(255, 238, 238, 238)),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.title,
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontSize: 35,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text(
                        controller.price,
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontSize: 35,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    controller.desc,
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    'Variants',
                    style: TextStyle(
                      fontFamily: 'BebasNeue',
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 12,
                      ),
                      const SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 12,
                      ),
                      const SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 12,
                      ),
                      const SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: Colors.lightBlue[800],
                        radius: 12,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      //
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/buy.png',
                          width: 24,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Add To Cart',
                          style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  )      
                ],
              ),
            ),
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
}) {
  return Builder(
    builder: (context) {
      return Container(
        height: 37,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      );
    },
  );
}