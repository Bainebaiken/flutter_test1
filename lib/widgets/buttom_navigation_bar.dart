// import 'package:flutter/material.dart';

// BottomNavigationBar buildBottomNavigationBar() {
//   return BottomNavigationBar(
//     type: BottomNavigationBarType.fixed,
//     items: const [
//       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//       BottomNavigationBarItem(icon: Icon(Icons.video_collection), label: 'Shorts'),
//       BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Upload'),
//       BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
//       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'You'),
//     ],
//     currentIndex: 0, // Default selection (Home)
//     onTap: (index) {
//       // Handle tap and change screens
//     },
//   );
// }
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.short_text), label: 'Shorts'),
        BottomNavigationBarItem(icon: Icon(Icons.upload_file), label: 'Upload'),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
      ],
    );
  }
}
