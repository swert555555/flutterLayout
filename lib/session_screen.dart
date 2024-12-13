import 'package:flutter/material.dart';

class SessionScreen extends StatelessWidget {
  const SessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF), // Белый фон
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Изображение сверху
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3, // Уменьшено для размещения над текстом
                child: Image.asset(
                  'images/p2.jpg', // Путь к вашему изображению
                  fit: BoxFit.cover, // Параметр для масштабирования изображения
                ),
              ),
              const SizedBox(height: 20), // Отступ между изображением и текстом

              // Верхний текст
              const Text(
                'Peter Mach',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Text(
                'Mind Deep Relax',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Черный цвет текста
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black, // Черный цвет текста
                ),
              ),
              const SizedBox(height: 20),

              // Кнопка "Play Next Session"
              ElevatedButton(
                onPressed: ()  {
                  Navigator.of(context).pushNamed(
                    '/',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF039EA2),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  '▷ Play Next Session',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Секция с карточками
              Expanded(
                child: ListView.builder(
                  itemCount: 3, // Количество карточек
                  itemBuilder: (context, index) {
                    final titles = ['Sweet Memories', 'A Day Dream', 'Mind Explore'];
                    final subtitles = ['December 29 Pre-Launch', 'December 29 Pre-Launch', 'December 29 Pre-Launch'];
                    final colors = [
                      const Color(0xFF2F80ED), // Первая карточка
                      const Color(0xFF039EA2), // Вторая карточка
                      const Color(0xFFF09235), // Третья карточка
                    ];
                    return _buildCard(
                      title: titles[index],
                      subtitle: subtitles[index],
                      color: colors[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Функция для создания карточки
  Widget _buildCard({required String title, required String subtitle, required Color color}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 9), // Отступ между карточками
      padding: const EdgeInsets.all(16),
      // decoration: BoxDecoration(
      //   // color: color.withOpacity(0.1), // Полупрозрачный фон с цветом
      //   // borderRadius: BorderRadius.circular(10),
      // ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Кнопка со значком ▷
          IconButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              foregroundColor: Colors.white,
               //радиус на 45
            ),
            // color: color,
            icon: const Icon(
              Icons.play_arrow, // Значок ▷
              color: Colors.white,             
            ),
          ),
          const SizedBox(width: 10), // Отступ между кнопкой и текстом
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Цвет текста
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey, // Цвет текста
                  ),
                ),
              ],
            ),
          ),
          // Три точки
          IconButton(
            onPressed: () {
              // Действие при нажатии на три точки
            },
            icon: const Icon(
              Icons.more_horiz, // Значок с тремя точками
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}