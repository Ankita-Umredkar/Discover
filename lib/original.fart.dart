// import 'package:flutter/material.dart';
// import 'package:navbar/home.dart';
// import 'package:navbar/profile.dart';
// import 'package:navbar/setting.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int index = 0;
//   List<Widget> list = [
//     Home(),
//     Profile(),
//     Setting(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Discover"),
//         ),

//         body:  list[index],
//         drawer: MyDrawer(onTap: (ctx, i) {
//           setState(() {
//             index = i;
//             Navigator.pop(ctx);
//           });
//         }),
//       ),
//     );
//   }
// }

// class MyDrawer extends StatelessWidget {
//   final Function onTap;

//   MyDrawer({required this.onTap});
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.8,
//       child: Drawer(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Padding(
//                 padding: EdgeInsets.all(6),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     Container(
//                       width: 60,
//                       height: 60,
//                       child: CircleAvatar(
//                           backgroundImage: AssetImage('images/user_5.png')),
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Text(
//                       'Ankita Umredkar',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white),
//                     ),
//                     SizedBox(
//                       height: 3,
//                     ),
//                     Text(
//                       'aaumredkar@gmail.com',
//                       style: TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('Profile'),
//               onTap: () => onTap(context, 0),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings
//               title: Text('Setting'),
//               onTap: () => onTap(context, 1),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Setting'),
//               onTap: () => onTap(context, 2),
//             ),
//             Divider(
//               height: 1,
//             ),
//             ListTile(
//               leading: Icon(Icons.exit_to_app),
//               title: Text('Logout'),
//               onTap: () => onTap(context, 0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
