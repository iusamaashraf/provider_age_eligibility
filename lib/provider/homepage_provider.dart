import 'package:flutter/material.dart';

class HomepageProvider with ChangeNotifier {
  bool? isEligible;
  String? eligibilityMessage = "";

  void checkEligibility(int age) {
    if (age >= 18) {
      isEligible = true;
      eligibilityMessage = "Eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligibilityMessage = "Not Eligible";
      notifyListeners();
    }
  }
}
