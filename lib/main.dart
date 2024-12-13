import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'session_screen.dart';
import 'song_screen.dart';
import 'tasks_screen.dart';
import 'app_provider.dart';
import 'login_page.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secrets of Atlantis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(), // (4) это сделано, ура
        '/home': (context) => const HomeScreen(), // (5) нинада
        '/session': (context) => const SessionScreen(), // (2) это сделано, ура
        '/song': (context) => const SongScreen(), // (3)
        '/tasks': (context) => const TasksScreen(),
      },
    );
  }
}