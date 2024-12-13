import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

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