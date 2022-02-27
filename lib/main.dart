import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swastik_air_hub/pages/homepage/main_home_page.dart';
import 'package:swastik_air_hub/route_helper/route_helper.dart';
import 'package:swastik_air_hub/utils/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SwastikAirhub',
      initialRoute: RouteHelper.initial,
      home: const Homepage(),
      getPages: RouteHelper.routes,
    );
  }
}
