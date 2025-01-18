import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'bottom_nav_provider.g.dart';

@riverpod
class BottomNavBarNotifier extends _$BottomNavBarNotifier {
  @override
  int build() {
    return 0;
  }

  void onItemTap(int index) {
    //print("object provider ${index}");
    state = index;
    //state =selectedIndex.value like in GetX.
  }
}
