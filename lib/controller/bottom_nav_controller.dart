import 'package:get/state_manager.dart';

class BottomNavController extends GetxController{
   //RxInt
  //obs is used to make variable reactive(adapt changes)
  var selectedIndex=0.obs;

  void onItemTap(int index) {
    print("object ${index}");
        selectedIndex.value = index;
  }

}
