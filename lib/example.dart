// import 'package:flutter/material.dart';

// class Example extends StatelessWidget {
//   const Example({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         body: Column(
//           children: [
//             // construct the profile details widget here
//             Container(
//               color: Colors.blueGrey[900],
//               height: 120,
//               child: Center(
//                 child: Text(
//                   'Logo here',
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 50,
//               child: AppBar(
//                 bottom: TabBar(
//                   tabs: [
//                     Tab(
//                       text: 'news',
//                     ),
//                     Tab(
//                       text: 'basics',
//                     ),
//                     Tab(
//                       text: 'content',
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // create widgets for each tab bar here
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // first tab bar view widget
//                   Container(
//                     color: Colors.red,
//                     child: Center(
//                       child: Text(
//                         'news',
//                       ),
//                     ),
//                   ),

//                   // second tab bar viiew widget
//                   Container(
//                     color: Colors.pink,
//                     child: Center(
//                       child: Text(
//                         'basics',
//                       ),
//                     ),
//                   ),
//                   Container(
//                     color: Colors.white,
//                     child: Center(
//                       child: Text(
//                         'content',
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
