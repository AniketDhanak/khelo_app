import 'package:get/get.dart';
import 'package:khelo_app/constants/controller_tag_constants.dart';
import 'package:khelo_app/screens/dashboard/dashboard_controller.dart';
import 'package:khelo_app/screens/home/home_controller.dart';

class AllControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(),
        tag: ControllerTagConstants.homeScreenControllerTag, fenix: true);
    Get.lazyPut<DashboardController>(() => DashboardController(),
        tag: ControllerTagConstants.dashboardControllerTag, fenix: true);

  }

}