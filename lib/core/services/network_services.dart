
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:simple_app_getx/core/constants/app_urls_headers/app_heders.dart';
import 'package:simple_app_getx/core/constants/app_urls_headers/app_urls.dart';
import 'package:simple_app_getx/data/model/commet_model.dart';

class NetworkService {
  /// list of models
  static List<CommentModel> commentslist = [];

  /// commet
  static BaseOptions getCommetOptions = BaseOptions(
    baseUrl: Urls.baseUrl,
    headers: AppHeader.commetHeaders(),
    connectTimeout: const Duration(seconds: 4000),
    receiveTimeout: const Duration(seconds: 5000),
    contentType: 'application/json',
    responseType: ResponseType.json,
  );
  static Dio getDioOptions = Dio(getCommetOptions);

  /// get
  static Future<void> getData() async {
    var response = await getDioOptions.get(Urls.getapicommet);
    commentslist = (response.data as List).map((e) => CommentModel.fromJson(e)).toList();
  }

  static Future<void> postData(CommentModel data) async {
    await getDioOptions.post(Urls.getapicommet, data: data.toJson());
  }

  static Future<void> deleteData(String id) async {
    var response = await getDioOptions.delete('${Urls.baseUrl}${Urls.getapicommet}/$id');
    debugPrint(response.statusCode.toString());
  }
}
