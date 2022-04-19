import 'package:get/get.dart';
import 'package:test1/controller/listview_controller.dart';

class ListViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListViewController>(() => ListViewController());
  }
}
