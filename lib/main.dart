import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/controller/home_page_controller.dart';
import 'package:test_flutter/shared/local/constant/theme.dart';
import 'package:test_flutter/shared/network/dio_helper.dart';
import 'package:test_flutter/view/screens/home_screen.dart';
import 'package:test_flutter/view/screens/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.configureDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HomePageControllerImp controller = Get.put(HomePageControllerImp());
    controller.getCountriesData();
    controller.getSliderImage();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Challenge',
      theme: appTheme,
      home: const HomeScreen(),
      // home: const Test(),
    );
  }
}
