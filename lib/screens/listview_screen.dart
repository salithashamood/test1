import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/controller/listview_controller.dart';

class ListViewScreen extends GetView<ListViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX ListView Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => controller.filterLanguage(value),
              decoration: const InputDecoration(
                labelText: 'Search language',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.searchLanguages.value.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(controller.searchLanguages.value[index]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
