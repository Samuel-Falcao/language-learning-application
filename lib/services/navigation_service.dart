// lib/services/navigation_service.dart
import 'package:flutter/foundation.dart';

class NavigationService {
  NavigationService._privateConstructor();
  static final NavigationService instance =
      NavigationService._privateConstructor();

  final ValueNotifier<int> selectedTabNotifier = ValueNotifier(0);

  void changeTab(int index) {
    selectedTabNotifier.value = index;
  }
}
