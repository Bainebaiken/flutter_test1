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

// import 'package:app/widgets/buttom_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import '../widgets/app_bar.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(), // Custom App Bar
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Add video categories
//             // const Padding(
//             //   padding: EdgeInsets.all(8.0),
//             //   child: Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             // ),
//             // Scrollable row for video categories
//             SizedBox(
//               height: 50,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: const [
//                   CategoryChip(label: 'All'),
//                   CategoryChip(label: 'Music'),
//                   CategoryChip(label: 'Sports'),
//                   CategoryChip(label: 'Gaming'),
//                   // Add more categories as needed
//                 ],
//               ),
//             ),
//             // Section for videos
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text('Recommended', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             ),
//             // Video list with thumbnails
//             Column(
//               children: List.generate(5, (index) => VideoCard(
//                 thumbnailUrl: 'https://media.istockphoto.com/id/1355086328/photo/american-football-championship-teams-ready-professional-players-aggressive-face-off-ready-for.jpg?s=612x612&w=0&k=20&c=SyOy0AjIloVMnn5aB9nuaTRghs1PlHy5fZDMGs2pVjc=', 
//                 title: 'GAMES $index', 
//                 views: '1M views')), // Example video cards
//             ),
            
//             // Section for Shorts (added directly in this file)
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text('Shorts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             ),
//             // Horizontally scrollable shorts with thumbnails
//             SizedBox(
//               height: 150, // Height for Shorts previews
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 10, // Number of Shorts
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: 120, // Width for each short preview
//                     margin: const EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Thumbnail for short video
//                         Container(
//                           height: 100,
//                           decoration: const BoxDecoration(
//                             image: DecorationImage(
//                               image: NetworkImage('https://media.istockphoto.com/id/1054574096/photo/virtual-reality-concept.jpg?s=612x612&w=0&k=20&c=41kaaNba9DtwIX9nXjjERrs1jjwgnCBmzeG44OQW5qg='),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 5),
//                         // Title and additional info for short
//                         Text(
//                           'IT $index',
//                           style: const TextStyle(color: Colors.white),
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         const Text(
//                           '1.2M views',
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: const BottomNavBar(), // Custom Bottom Navigation Bar
//     );
//   }
// }

// class CategoryChip extends StatelessWidget {
//   final String label;
  
//   const CategoryChip({super.key, required this.label});
  
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4.0),
//       child: Chip(
//         label: Text(label),
//         backgroundColor: Colors.grey[700],
//       ),
//     );
//   }
// }

// class VideoCard extends StatelessWidget {
//   final String thumbnailUrl;
//   final String title;
//   final String views;

//   const VideoCard({
//     super.key,
//     required this.thumbnailUrl,
//     required this.title,
//     required this.views,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Full-width thumbnail
//           Container(
//             width: double.infinity,
//             height: 200, // Adjust height if necessary
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: NetworkImage(thumbnailUrl),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const SizedBox(height: 8),
//           // Video details: title and views below the thumbnail
//           Text(
//             title,
//             style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//           ),
//           const SizedBox(height: 5),
//           Text(
//             views,
//             style: const TextStyle(color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:app/widgets/buttom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';

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
            // Video list with thumbnails
            Column(
              children: List.generate(5, (index) => VideoCard(
                thumbnailUrl: 'https://media.istockphoto.com/id/1355086328/photo/american-football-championship-teams-ready-professional-players-aggressive-face-off-ready-for.jpg?s=612x612&w=0&k=20&c=SyOy0AjIloVMnn5aB9nuaTRghs1PlHy5fZDMGs2pVjc=', 
                title: 'GAMES $index', 
                channelName: 'Channel $index',
                description: 'This is a brief description of the video $index',
                views: '1M views',
                timeSinceUploaded: '5 hours ago',
              )), // Example video cards
            ),
            
            // Section for Shorts (horizontally scrollable)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Shorts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            // Horizontally scrollable shorts with a grid-like view
            SizedBox(
              height: 250, // Adjust height to fit two rows of shorts
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scroll direction
                itemCount: 10, // Number of Shorts
                itemBuilder: (context, index) {
                  return Container(
                    width: 180, // Adjust width for each item
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Thumbnail for short video
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://media.istockphoto.com/id/1054574096/photo/virtual-reality-concept.jpg?s=612x612&w=0&k=20&c=41kaaNba9DtwIX9nXjjERrs1jjwgnCBmzeG44OQW5qg='),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Title and channel name
                        Text(
                          'Short Video $index',
                          style: const TextStyle(color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Channel $index',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 5),
                        // Views and time since uploaded
                        const Row(
                          children: [
                            Text(
                              '1.2M views',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '1 day ago',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
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

class VideoCard extends StatelessWidget {
  final String thumbnailUrl;
  final String title;
  final String views;
  final String channelName; // Added channel name
  final String description; // Added video description
  final String timeSinceUploaded; // Added static time since uploaded

  const VideoCard({
    super.key,
    required this.thumbnailUrl,
    required this.title,
    required this.views,
    required this.channelName,
    required this.description,
    required this.timeSinceUploaded,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Full-width thumbnail
          Container(
            width: double.infinity,
            height: 200, // Adjust height if necessary
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(thumbnailUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Video details: title, channel name, and description
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            channelName,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(color: Colors.grey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          // Views and time since uploaded
          Row(
            children: [
              Text(
                views,
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 10),
              Text(
                timeSinceUploaded,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
