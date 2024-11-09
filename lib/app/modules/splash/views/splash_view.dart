import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_furniture/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [
              Transform.translate(
                offset: const Offset(0, -135),
                child: Transform.scale(
                  scale: 1.3,
                  child: Image.asset(
                    'assets/images/bg-splash.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/color-splash.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 25,
                top: 55,
                child: titleText("EXPLORE"),
              ),
              Positioned(
                left: 25,
                top: 125,
                child: titleText("AND GET"),
              ),
              Positioned(
                left: 25,
                top: 195,
                child: titleText("INSPIRED"),
              ),
              Positioned(
                left: 25,
                top: MediaQuery.of(context).size.height * 0.80,
                child: Container(
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFCC0A),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "Let's Go",
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: MediaQuery.of(context).size.height * 0.798,
                child: GestureDetector(
                  onTap: () => Get.offAllNamed(Routes.HOME),
                  child: Container(
                    width: 87,
                    height: 87,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 125,
                top: MediaQuery.of(context).size.height * 0.81,
                child: Image.asset(
                    'assets/images/arrow.png',
                    width: MediaQuery.of(context).size.width * 0.27,
                    fit: BoxFit.fitHeight,
                  ),
              ),
              
            ],
          )
    );
  }
}

Text titleText(value) {
    return Text(
      value,
      style: TextStyle(
        fontFamily: 'BebasNeue',
        fontSize: 73,
        fontWeight: FontWeight.normal,
        color: const Color.fromARGB(255, 255, 255, 255),
        shadows: [
          Shadow(
            offset: Offset(3.0, 3.0),
            blurRadius: 35.0,
            color: Color.fromARGB(128, 0, 0, 0),
          ),
        ],
      ),
    );
  }
