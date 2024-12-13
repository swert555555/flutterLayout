import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Great Society'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dan Smith',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'My Weekly Talks\n\$ 13km/week',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '1002 Society\nCreate a Landing Page',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '1003\nNew Zealand\nDevelop a Website',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Teday’s Tasks\n\$ 12km/week',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Design: 2 App Screens\nCOVER WORKING',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '© 2020 by DJ Aly 2020',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Design Homepage\nVirtual Marketing Website',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Secrets of Atlantis'),
//       ),
//       body: const Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Position',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Codin\nThe sponsor of national podcast is a progressive and intense competition, everything from other existing continents... ever more',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('4.9.0 (1)', style: TextStyle(fontSize: 16)),
//                 Text('Emerging', style: TextStyle(fontSize: 16)),
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('5.3 (2)', style: TextStyle(fontSize: 16)),
//                 Text('Live', style: TextStyle(fontSize: 16)),
//               ],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Involve your friends to join.',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 20),
//             Text(
//               '9:41',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Brian Pawley\nDaddy\nMounty\nNancy',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: null, // Укажите действие для кнопки
//               child: Text('Amplitude'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }