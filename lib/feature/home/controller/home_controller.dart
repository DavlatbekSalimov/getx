import 'package:get/get.dart';
import 'package:simple_app_getx/core/services/network_services.dart';
import 'package:simple_app_getx/data/model/commet_model.dart';

class HomeController extends GetxController {
  HomeController() {
    getData();
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  RxList<CommentModel> postList = <CommentModel>[].obs;

  void getData() async {
    await NetworkService.getData();
    postList.value = NetworkService.commentslist;
  }

  void postData({required CommentModel data}) async {
    await NetworkService.postData(data);
    getData();
  }

  void deleteData({required String id}) async {
    await NetworkService.deleteData(id);
    getData();
  }

  RxInt count = 0.obs;
  void increment() {
    count.value++;
  }
}
