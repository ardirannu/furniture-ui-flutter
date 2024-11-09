import 'package:get/get.dart';

class DetailController extends GetxController {
  late final String title;
  late final String price;
  late final String imageUrl;
  late final String tag;
  final String desc = 'Perfect loveseat, sofa and home theater set for your home. Art object that fit your style. Great quality customizable recliners with easy-action recline. Fine leathers and fabrics.';

  @override
  void onInit() {
    super.onInit();
    title = Get.arguments['title'];
    price = Get.arguments['price'];
    imageUrl = Get.arguments['imageUrl'];
    tag = Get.arguments['tag'];
  }

}
