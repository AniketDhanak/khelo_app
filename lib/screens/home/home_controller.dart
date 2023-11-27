import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:khelo_app/screens/home/login_dialog.dart';

class HomeController extends GetxController{

  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  onTapLogin(){
    Get.dialog(const LoginDialog());
  }

}