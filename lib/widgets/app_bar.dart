// import 'package:flutter/material.dart';

// AppBar buildAppBar() {
//   return AppBar(
//     title: Row(
//       children: [
//         Image.asset(
//           'assets/youtube_logo.png', // Add YouTube logo asset
//           height: 32,
//         ),
//         const Spacer(),
//         IconButton(
//           icon: const Icon(Icons.search),
//           onPressed: () {
//             // Search action
//           },
//         ),
//         IconButton(
//           icon: const Icon(Icons.notifications),
//           onPressed: () {
//             // Notification action
//           },
//         ),
//       ],
//     ),
//   );
// }


import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    title: Row(
      children: [
        Image.asset('assets/youtube_logo.png', width: 100), // YouTube logo
        const SizedBox(width: 8), // Add some spacing between the logo and the text
        const Text(
          'YouTube',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        const Icon(Icons.search, size: 28),
        const SizedBox(width: 20),
        const Icon(Icons.notifications, size: 28),
        const SizedBox(width: 20),
        const Icon(Icons.account_circle, size: 28),
      ],
    ),
  );
}
