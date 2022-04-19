import 'package:get/get.dart';

class ListViewController extends GetxController {
  final List<String> allLanguages = [
    "C",
    "Java",
    "Python",
    "C++",
    "C#",
    "Visual Basic",
    "JavaScript",
    "PHP",
    "SQL",
    "Assembly language",
    "R",
    "Groovy"
  ].obs;

  Rx<List<String>> searchLanguages = Rx<List<String>>([]);

  @override
  void onInit() {
    super.onInit();
    searchLanguages.value = allLanguages;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void filterLanguage(String language) {
    List<String> results = [];
    if (language.isEmpty) {
      results = allLanguages;
    } else {
      results = allLanguages
          .where((element) =>
              element.toString().toLowerCase().contains(language.toLowerCase()))
          .toList();
    }
    searchLanguages.value = results;
  }
}
