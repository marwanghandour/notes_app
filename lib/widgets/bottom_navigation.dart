import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const CustomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.home, size: 30,),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.search, size: 30,),
          label: 'Search',
        ),
        NavigationDestination(
          icon: Icon(Icons.person, size: 30,),
          label: 'Profile',
        ),
      ],
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      backgroundColor: Colors.black,
      height: 60,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      elevation: 5,
    );
  }
}
