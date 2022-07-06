import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  var checkC = false.obs;
  TextEditingController phoneC = TextEditingController();
  @override
  void onClose() {
    phoneC.dispose();
    // TODO: implement onClose
    super.onClose();
  }
}
