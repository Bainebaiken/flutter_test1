// import 'package:app/widgets/buttom_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import '../widgets/app_bar.dart';
// // import '../widgets/bottom_navigation_bar.dart'; // Import your custom BottomNavigationBar
// import '../widgets/video_card.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String selectedCategory = 'All'; // Default category

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(),
//       bottomNavigationBar: buildBottomNavigationBar(),
//       body: CustomScrollView(
//         slivers: [
//           // Video Categories Section
//           SliverToBoxAdapter(
//             child: SizedBox(
//               height: 50,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: ['All', 'Music', 'Gaming', 'News', 'Movies']
//                     .map((category) => Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: ChoiceChip(
//                             label: Text(category),
//                             selected: selectedCategory == category,
//                             onSelected: (selected) {
//                               setState(() {
//                                 selectedCategory = category;
//                               });
//                             },
//                           ),
//                         ))
//                     .toList(),
//               ),
//             ),
//           ),

//           // Videos Section for Selected Category
//           SliverPadding(
//             padding: const EdgeInsets.all(8.0),
//             sliver: SliverGrid(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: _getCrossAxisCount(context), // Responsive layout
//                 childAspectRatio: 16 / 9,
//                 mainAxisSpacing: 8,
//                 crossAxisSpacing: 8,
//               ),
//               delegate: SliverChildBuilderDelegate(
//                 (BuildContext context, int index) {
//                   return const VideoCard(); // Use VideoCard widget
//                 },
//                 childCount: 10, // Example number of videos
//               ),
//             ),
//           ),

//           // Video Shorts Section
//           const SliverToBoxAdapter(
//             child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text('Shorts', style: TextStyle(fontSize: 18)),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: SizedBox(
//               height: 150,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 5, // Example number of shorts
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: 100,
//                     margin: const EdgeInsets.symmetric(horizontal: 8.0),
//                     color: Colors.grey,
//                     child: Center(child: Text('Short Video $index')),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Responsive crossAxisCount calculation based on screen size
//   int _getCrossAxisCount(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     if (screenWidth > 1200) {
//       return 4;
//     } else if (screenWidth > 800) {
//       return 3;
//     } else {
//       return 2;
//     }
//   }
// }

import 'package:app/widgets/buttom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(), // Custom App Bar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add video categories
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            // Scrollable row for video categories
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryChip(label: 'All'),
                  CategoryChip(label: 'Music'),
                  CategoryChip(label: 'Sports'),
                  CategoryChip(label: 'Gaming'),
                  // Add more categories as needed
                ],
              ),
            ),
            // Section for videos
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recommended', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            // Video list
            Column(
              children: List.generate(5, (index) => const VideoCard()), // Example video cards
            ),
            
            // Section for Shorts (added directly in this file)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Shorts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            // Horizontally scrollable shorts
            SizedBox(
              height: 150, // Height for Shorts previews
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Number of Shorts
                itemBuilder: (context, index) {
                  return Container(
                    width: 120, // Width for each short preview
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Thumbnail for short video
                        Container(
                          height: 100,
                          color: Colors.black,
                          child: const Center(
                            child: Text(
                              'Shorts',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Title and additional info for short
                        Text(
                          'Short Title $index',
                          style: const TextStyle(color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Text(
                          '1.2M views',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(), // Custom Bottom Navigation Bar
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  
  const CategoryChip({super.key, required this.label});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.grey[700],
      ),
    );
  }
}

