import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_app_getx/core/lang/translate/translete.dart';
import 'package:simple_app_getx/core/router/get_router_name.dart';
import 'package:simple_app_getx/feature/home/binding/home_binding.dart';
import 'package:simple_app_getx/feature/home/view/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale:const  Locale('en','UK'),
      translations: MyTranslations(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ).copyWith(
           textTheme: ButtonTextTheme.primary,
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(25.0)
           ),
      ),),
      initialRoute: GetAppRouter.home,
      getPages: [
        GetPage(
          name: GetAppRouter.home,
          binding: HomeBindings(),
          page: () => HomePage(),
        ),
      ],
    );
  }
}
