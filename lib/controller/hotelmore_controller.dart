import 'package:get/state_manager.dart';

class TextExpansionController extends GetxController{
  var isExpanded = true.obs;
  istoggleExpandable() {
      isExpanded.value = !isExpanded.value;
  }
}