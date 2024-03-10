import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_app_getx/data/model/commet_model.dart';
import 'package:simple_app_getx/feature/home/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController ctr = Get.find<HomeController>();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title:  Text('title'.tr),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: ctr.postList.length,
              itemBuilder: ((context, index) {
                var item = ctr.postList[index];
                return Card(
                  child: ListTile(
                      title: Text(item.title.obs.toString()),
                      trailing: IconButton(
                          onPressed: () async {
                            ctr.deleteData(id: item.id);
                          },
                          icon: const Icon(Icons.delete)),
                      subtitle: Text(
                        item.subtitle,
                      )),
                );
              })),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            CommentModel data = CommentModel(
              id: '1',
              title: 'salom',
              subtitle: 'Sam viloyati urgut tumani da tavallud  topgan',
              datetime: DateTime.now().toString().substring(0, 12),
            );
            ctr.postData(data: data);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
