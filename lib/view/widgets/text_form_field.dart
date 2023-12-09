import 'package:flutter/material.dart';
import 'package:test_flutter/shared/local/constant/color.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorApp.white,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: ColorApp.white,
          hintText: 'Search',
          hintStyle: Theme.of(context).textTheme.headlineSmall,
          prefixIcon: const Icon(Icons.search, color: ColorApp.primaryColor),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black, // Change the border color here
              width: 2.0, // Change the border width here
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        ),
      ),
    );
  }
}
