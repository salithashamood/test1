import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test1/binding/listview_binding.dart';
import 'package:test1/screens/listview_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => ListViewScreen(),
        binding: ListViewBinding())
  ];
}
