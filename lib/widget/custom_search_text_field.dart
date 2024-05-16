import 'package:flutter/material.dart';
import 'package:hubtel_test/config/color_pallette.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: ColorPallette().dashboardGray),
        filled: true,
        fillColor: ColorPallette().lightGray,
        hintText: 'Search',
        hintStyle: TextStyle(
            color: ColorPallette().dashboardGray), // Change hint text color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
          borderSide: BorderSide.none, // Remove border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
          borderSide: BorderSide.none, // Remove border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
          borderSide: BorderSide.none, // Remove border color
        ),
      ),
    );
  }
}
