// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Row(
//             spacing: 20.0,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               IconButton(
//                 padding: const EdgeInsets.all(20.0),
//                 icon: const ColoredBox(
//                   color: Color(0xFFFF0000),
//                   child: Icon(Icons.add),
//                 ),
//                 onPressed: () {},
//                 tooltip: 'Tooltip',
//               ),
//               IconButton.filled(
//                 padding: const EdgeInsets.all(20.0),
//                 icon: const ColoredBox(
//                   color: Color(0xFFFF0000),
//                   child: Icon(Icons.add),
//                 ),
//                 onPressed: () {},
//                 tooltip: 'Tooltip',
//               ),
//               IconButton.filledTonal(
//                 padding: const EdgeInsets.all(20.0),
//                 icon: const ColoredBox(
//                   color: Color(0xFFFF0000),
//                   child: Icon(Icons.add),
//                 ),
//                 onPressed: () {},
//                 tooltip: 'Tooltip',
//               ),
//               IconButton.outlined(
//                 padding: const EdgeInsets.all(20.0),
//                 icon: const ColoredBox(
//                   color: Color(0xFFFF0000),
//                   child: Icon(Icons.add),
//                 ),
//                 onPressed: () {},
//                 tooltip: 'Tooltip',
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }


import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const Material(child: Text('Home')),
        routes: <String, WidgetBuilder>{
          '/next': (BuildContext context) {
            return const Material(
              child: Center(
                child: BackButton(),
              ),
            );
          },
        },

    );
  }
}
