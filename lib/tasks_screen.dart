import 'package:flutter/material.dart';
// import 'dart:math' as math;

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Фон изображения в верхней трети экрана
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.5,
                child: Image.asset(
                  'images/kit.jpg', // Путь к вашему изображению
                  fit: BoxFit.cover, // Параметр для масштабирования изображения
                ),
              ),
            ),
          ),
          // Контейнер с выпуклым верхом и закругленными сторонами
          Positioned(
            top: screenHeight / 3 - 50,
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipPath(
              clipper: RoundedTopClipper(), // Кастомный клиппер для выпуклого верха и закругленных сторон
              child: Container(
                color: const Color(0xFFfbf5f5), // Светлый фон
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50), // Уменьшен отступ заголовка
                    const Text(
                      'Secrets of Atlantis',
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    // Кнопка "Follow"
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFfb7b18)), // Цвет границы кнопки
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'Follow',
                        style: TextStyle(color: Color(0xFFfb7b18)), // Цвет текста кнопки
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Соединенный блок с отзывом и рейтингом
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1d0f5a), // Темно-фиолетовый цвет блока
                        borderRadius: BorderRadius.circular(16.0), // Закругленные края
                      ),
                      padding: const EdgeInsets.all(16.0), // Отступы внутри блока
                      child: Column(
                        children: [
                          // Фиолетовый блок с комментарием
                          Container(
                            color: const Color(0xFF3f3085), // Более темный фиолетовый цвет
                            padding: const EdgeInsets.all(16.0), // Отступы внутри блока
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Первая колонка: аватарка
                                Padding(
                                  padding: EdgeInsets.only(right: 16.0), // Отступ от края
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundImage: NetworkImage('https://example.com/user.jpg'), // Замените на ваш URL изображения
                                  ),
                                ),
                                // Вторая колонка: Codin и Host
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Codin',
                                      style: TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold), // Белый цвет текста
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Host',
                                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12), // Белый цвет текста
                                    ),
                                  ],
                                ),
                                SizedBox(width: 16),
                                // Третья колонка: сам отзыв
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 8.0), // Отступ текста сбоку
                                        child: Text(
                                          'This podcast is amazing! It has so much valuable information and insights...',
                                          style: TextStyle(color: Color(0xFFFFFFFF)), // Белый цвет текста
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Text(
                                        'see more',
                                        style: TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold), // Белый цвет текста
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Рейтинг, жанр и иконка колокольчика на светло-сером фоне
                          Container(
                            color: const Color(0xFF3f3085), 
                            padding: const EdgeInsets.all(8.0),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '4.4',
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)), // Черный цвет текста
                                    ),
                                    SizedBox(width: 8),
                                    Icon(Icons.star, color: Color(0xFF808080)), // Золотой цвет звезды
                                    SizedBox(width: 8),
                                    Text(
                                      'Fantasy',
                                      style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)), // Черный цвет текста
                                    ),
                                  ],
                                ),
                                Icon(Icons.notifications, color: Color(0xFF808080)), // Серый цвет колокольчика
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Наложение аватаров с 10+ и надпись "Live" справа
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Ряд аватарок
                              Row(
                                children: [
                                  const PositionedAvatar(
                                    imageUrl: 'https://example.com/avatar1.jpg', // Замените на ваш URL изображения
                                    backgroundColor: Color(0xFF0000FF), // Синий цвет аватарки
                                  ),
                                  const PositionedAvatar(
                                    imageUrl: 'https://example.com/avatar2.jpg', // Замените на ваш URL изображения
                                    leftOffset: -20,
                                    backgroundColor: Color(0xFF008000), // Зеленый цвет аватарки
                                  ),
                                  const PositionedAvatar(
                                    imageUrl: 'https://example.com/avatar3.jpg', // Замените на ваш URL изображения
                                    leftOffset: -40,
                                    backgroundColor: Color(0xFFFF0000), // Красный цвет аватарки
                                  ),
                                  const PositionedAvatar(
                                    imageUrl: 'https://example.com/avatar4.jpg', // Замените на ваш URL изображения
                                    leftOffset: -60,
                                    backgroundColor: Color(0xFFFFFF00), // Желтый цвет аватарки
                                  ),
                                  const PositionedAvatar(
                                    imageUrl: 'https://example.com/avatar5.jpg', // Замените на ваш URL изображения
                                    leftOffset: -80,
                                    backgroundColor: Color(0xFF800080), // Фиолетовый цвет аватарки
                                  ),
                                  // Фиолетовый кружок с текстом "10+"
                                  Container(
                                    margin: const EdgeInsets.only(left: 10), // Отступ для "10+"
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF3f3085), // Фиолетовый цвет фона
                                      shape: BoxShape.circle, // Круг
                                    ),
                                    child: const Text(
                                      '10+',
                                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12), // Белый цвет текста
                                    ),
                                  ),
                                ],
                              ),
                              // Надпись "Live" справа
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                decoration: BoxDecoration(
                                  color: Colors.red, // Красный цвет
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Row(
                                  children: [
                                    Text(
                                      'Live',
                                      style: TextStyle(color: Colors.white, fontSize: 12),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.white,
                                      size: 8,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Желтый блок снизу фиолетового блока
                    Container(
                      margin: const EdgeInsets.only(top: 16.0), // Отступ сверху
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD700), // Желтый цвет
                        borderRadius: BorderRadius.circular(16.0), // Закругленные края
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Картинка слева
                          Image.asset(
                            'images/invite_image.png', // Замените на ваш путь к изображению
                            width: 40,
                            height: 40,
                          ),
                          // Текст посередине
                          const Text(
                            'Invite your Friends to join',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          // Иконка ссылки справа
                          const Icon(
                            Icons.link,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Круглая кнопка, выступающая из контейнера
          Positioned(
            top: screenHeight / 3 - 100, // Опущена ниже
            left: (screenWidth - 160) / 2, // Центрирование
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle, // Круг
                color: const Color(0xFFfbf5f5),
              ),
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFfb7b18), // Цвет кнопки
                  shape: const CircleBorder(),
                  minimumSize: const Size(80, 80), // Увеличенный размер кнопки
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(Icons.play_arrow, color: Colors.white, size: 40), // Увеличенная иконка
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Кастомный клиппер для выпуклого верха и закругленных сторон
class RoundedTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final radius = size.height * 0.15; // Радиус закругления
    // final clipCenter = Offset(size.width / 2, radius); // Центр выпуклости

    // Рисуем верхнюю границу с выпуклостью
    path.moveTo(0, radius);
    path.quadraticBezierTo(size.width / 2, -radius, size.width, radius);

    // Рисуем нижнюю границу с закругленными углами
    path.lineTo(size.width, size.height - radius);
    path.quadraticBezierTo(size.width, size.height, size.width - radius, size.height);
    path.lineTo(radius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - radius);

    // Закрываем путь
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// Виджет для наложения аватаров
class PositionedAvatar extends StatelessWidget {
  final String imageUrl;
  final double leftOffset;
  final Color backgroundColor;

  const PositionedAvatar({
    required this.imageUrl,
    this.leftOffset = 0,
    this.backgroundColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(leftOffset, 0),
      child: CircleAvatar(
        radius: 16,
        backgroundColor: backgroundColor,
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}