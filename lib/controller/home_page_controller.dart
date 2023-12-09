import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:test_flutter/model/model.dart';
import 'package:test_flutter/shared/network/dio_helper.dart';

abstract class HomePageController extends GetxController {
  getCountriesData();
}

class HomePageControllerImp extends HomePageController {

  //Variables
  List<String> dropdownItems = [''];
  List<String> imagesAssets = [];
  List<String> flagsAssets = [];
  List<String> tabBarInfo = [
    'All', 'Baghdad', 'Al-Rassafah', 'Al-Bassrah', 'Karbalaa'
  ];

  String selectedOption = '';
  String flag = 'https://ofrlk.com/images/country-images/iraq.png';

  late CarouselController carouselController = CarouselController();
  int sliderIndex = 0;

  //Functions
  void changeDropListItem(String newItem) {
    selectedOption = newItem;
    update();
  }


  @override
  getCountriesData() async {
    await DioHelper.getCountriesData(url: 'api/get-all-countries')
        .then((value) {
      final List<dynamic> data = value.data['data'];
      dropdownItems = data.map((item) => item['name'].toString()).toList();
      flagsAssets = data.map((item) => item['image'].toString()).toList();
      update();
      print(dropdownItems);
      print(flagsAssets);
    }).catchError((err) {
      print('Error: $err'); // Prints 401.
    }, test: (error) {
      return error is int && error >= 400;
    });
  }

  getSliderImage() async {
    await DioHelper.getSliderImages(url: 'api/get-slider-image').then((value) {
      final List<dynamic> data = value.data['data'];
      imagesAssets = data.map((item) => item['image'].toString()).toList();
      update();
      print(imagesAssets);
    }).catchError((err) {
      print('Error: $err'); // Prints 401.
    }, test: (error) {
      return error is int && error >= 400;
    });
  }


  @override
  void onInit() {
    carouselController = CarouselController();
    super.onInit();
  }
  @override
  void dispose() {
    dropdownItems = [''];
    imagesAssets = [];
    flagsAssets = [];
    selectedOption = '';
    super.dispose();
  }
}
