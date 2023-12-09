import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_flutter/controller/home_page_controller.dart';
import 'package:test_flutter/view/widgets/droplist_button.dart';
import 'package:test_flutter/view/widgets/tab_bar.dart';
import 'package:test_flutter/view/widgets/text_form_field.dart';

import '../widgets/images_slider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return GetBuilder<HomePageControllerImp>(
      builder: (controller) => const Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                DropListButton(),
                Gap(10),
                ImagesSliderWithIndicator(),
                Gap(20.0),
                CustomTextFormField(),
                Gap(20.0),
                CustomTabBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
