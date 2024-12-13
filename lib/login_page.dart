import 'package:flutter/material.dart';
// import 'package:flutter_application_2/app_provider.dart';
// import 'app_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF039EA2), // Темно-бирюзовый фон в 16ричном формате
      body: Stack(
        children: [
          // SVG картинка на заднем фоне
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Image.asset(
                  'images/p1.jpg', // Путь к вашему изображению
                  fit: BoxFit.cover, // Параметр для масштабирования изображения
                ),
              ),
            ),
          ),
          // Текст и кнопки
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'medinow',
                    style: TextStyle(
                      fontSize: 46,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF), // Белый цвет текста в 16ричном формате
                    ),
                  ),
                  const Text(
                    'Meditate with us!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFFFFFFF), // Белый цвет текста в 16ричном формате
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/song',
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF), 
                      foregroundColor: const Color(0xFF000000), 
                      minimumSize: const Size(300, 50), // Одинаковая ширина
                    ),
                    child: const Text(
                      'Sign in with Apple',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF000000), 
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/session',
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFCDFDFE), // Бледно-голубой цвет в 16ричном формате
                      foregroundColor: const Color(0xFF000000), // Черный цвет текста в 16ричном формате
                      minimumSize: const Size(300, 50), // Одинаковая ширина
                    ),
                    child: const Text(
                      'Continue with Email or Phone',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF000000), // Черный цвет текста в 16ричном формате
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {                      
                      Navigator.of(context).pushNamed(
                        '/tasks',
                      );
                    },
                    child: const Text(
                      'Continue With Google',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFFFFF), // Черный цвет текста в 16ричном формате
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}