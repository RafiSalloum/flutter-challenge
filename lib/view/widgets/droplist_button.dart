import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_flutter/controller/home_page_controller.dart';
import 'package:test_flutter/shared/local/constant/color.dart';

class DropListButton extends StatelessWidget {
  const DropListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageControllerImp>(
      builder: (controller) => Container(
        decoration: const BoxDecoration(
          color: ColorApp.white,
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        width: double.infinity,
        height: 65.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: DropdownButton<String>(
            dropdownColor: Colors.white,
            style: Theme.of(context).textTheme.headlineSmall,
            hint: const Text('Choose Country'),
            isExpanded: true,
            value: controller.selectedOption == null ||
                    controller.selectedOption.isEmpty
                ? controller.dropdownItems[0]
                : controller.selectedOption,
            borderRadius: BorderRadius.circular(12.0),
            icon: Row(
              children: [
                Container(
                  width: 30.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: ColorApp.white,
                    borderRadius: BorderRadius.circular(4.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          controller.selectedOption == controller.dropdownItems[0] || controller.selectedOption == ''
                              ? 'https://ofrlk.com/images/country-images/iraq.png'
                              : 'https://ofrlk.com/images/country-images/egypt.png'
                            ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Gap(5.0),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
            items: controller.dropdownItems
                .map((String value) =>
                    DropdownMenuItem<String>(value: value, child: Text(value)))
                .toList(),
            onChanged: (newValue) {
              controller.changeDropListItem(newValue!);
              // controller.changeFlag(newValue);
              print(controller.flag);
              print(controller.selectedOption);
            },
          ),
        ),
      ),
    );
  }
}
