// import 'package:flutter/material.dart';

// class VideoCard extends StatelessWidget {
//   const VideoCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 120,
//             color: Colors.grey, // Placeholder for video thumbnail
//           ),
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(
//               'Video Title',
//               style: TextStyle(fontWeight: FontWeight.bold),
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text('Channel Name'),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.black,
            child: const Center(
              child: Text('Video Thumbnail', style: TextStyle(color: Colors.white)),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle, size: 40, color: Colors.white),
            title: Text('Video Title', style: TextStyle(color: Colors.white)),
            subtitle: Text('Channel Name • 1M views • 2 days ago', style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
