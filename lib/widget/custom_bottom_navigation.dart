import 'package:flutter/material.dart';
import 'package:hubtel_test/config/color_pallette.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      items: [
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.home, 0),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.mobile_friendly_rounded, 1),
          label: 'Send',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.my_library_books_outlined, 2),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.calendar_today, 3),
          label: 'Scheduled',
        ),
      ],
      currentIndex: selectedIndex,
      selectedIconTheme:
          IconThemeData(color: ColorPallette().bottomNavSelected),
      onTap: onItemTapped,
    );
  }

  Widget _buildIcon(IconData iconData, int index) {
    bool isSelected = selectedIndex == index;
    return Container(
      decoration: isSelected
          ? BoxDecoration(
              shape: BoxShape.circle,
              color: ColorPallette().bottomNavSelected,
            )
          : null,
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        iconData,
        color: Colors.black,
      ),
    );
  }
}
