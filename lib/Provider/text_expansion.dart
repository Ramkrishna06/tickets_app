import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'text_expansion.g.dart';

@riverpod
class TextExpansionNotifier extends _$TextExpansionNotifier {
  @override
  bool build() {
    return true;
  }

  void istoggleExpandable(bool toggle) {
    //print("object provider ${index}");
    state = !toggle;
    //state =selectedIndex.value like in GetX.
  }
}