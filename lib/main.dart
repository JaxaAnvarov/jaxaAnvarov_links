import 'package:flutter/material.dart';
import 'package:jaxa_anvarov/screens/home/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JaxaAnvarov',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// final Uri _url = Uri.parse('https://flutter.dev');

// void main() => runApp(
//       const MaterialApp(
//         home: Material(
//           child: Center(
//             child: ElevatedButton(
//               onPressed: _launchUrl,
//               child: Text('Show Flutter homepage'),
//             ),
//           ),
//         ),
//       ),
//     );

// void _launchUrl() async {
//   if (!await launchUrl(_url)) throw 'Could not launch $_url';
// }
