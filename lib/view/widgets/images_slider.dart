import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter/controller/home_page_controller.dart';
import 'package:test_flutter/shared/local/constant/color.dart';

class ImagesSliderWithIndicator extends StatelessWidget {
  const ImagesSliderWithIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageControllerImp>(
        builder: (controller) => Column(
          children: [
            CarouselSlider(
              carouselController: controller.carouselController,
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  controller.sliderIndex = index;
                  controller.update();
                },
              ),
              items: controller.imagesAssets.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              opacity: 0.7,
                              image: NetworkImage('https://ofrlk.com/$imageUrl'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Random Text', style: GoogleFonts.alexandria(
                                fontWeight: FontWeight.bold, fontSize: 22, color: ColorApp.white),),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
            const Gap(10),
            GetBuilder<HomePageControllerImp>(
              builder: (controller) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: controller.imagesAssets.map((imageUrl) {
                  int index = controller.imagesAssets.indexOf(imageUrl);
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 2.5),
                    height: 8.0,
                    width: controller.sliderIndex == index ? 16.0 : 8.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: controller.sliderIndex == index ? ColorApp.primaryColor : Colors.grey,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),

    );
  }
}




