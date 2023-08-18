import 'package:get/get.dart';
import '../controllers/mobile_controller.dart';

class DesktopBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MobileController>(
      MobileController(),
    );
  }
}
