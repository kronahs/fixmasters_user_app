import 'package:fixmasters_user_app/controller/service_provider_controller.dart';
import 'package:get/get.dart';

class RootBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ServiceProvidersController());
  }

}