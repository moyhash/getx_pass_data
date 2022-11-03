import 'package:get/get.dart';

class HomecreenCtr extends GetxController {
  String imgName = "fatiha2.png";

  //Function
  changeImage() {
    imgName = "koursi.png";
    update();
  }
}
