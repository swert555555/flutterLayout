import 'package:flutter/material.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({super.key});

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
              const SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [                            
                            Text(
                              'Meditate',
                              style: const TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                  ],
                ),
              ),
               const SizedBox(height: 10),
              // Секция с text карточками
              Container(
                height: 45, // Высота всей области
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildTextCard(text: 'All', isFirstCard: true),
                    _buildTextCard(text: 'Bible In a Year'),
                    _buildTextCard(text: 'Dailies'),
                    _buildTextCard(text: 'Minutes'),
                    _buildTextCard(text: 'November'),
                  ],
                ),
              ),
               const SizedBox(height: 10),
              // Изображение сверху
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Фон карточки
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 47, 47, 47).withOpacity(0.1),
                      blurRadius: 5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Изображение
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image(
                        image: AssetImage('images/p2.jpg'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Заголовок
                          Text(
                            'A Song of Moon',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          // Подзаголовок
                          Text(
                            'Start with the basics',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 6), // Отступ между подзаголовком и нижней частью
                          // Нижняя часть: иконка сердечка и текст "like", текст "Start >"
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                    size: 14,
                                  ),
                                  SizedBox(width: 4), // Отступ между иконкой и текстом
                                  Text(
                                    '9 Sessions',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Start >',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10), // Отступ между изображением и текстом
              // Секция с карточками
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 карточки в ряд
                    crossAxisSpacing: 16, // Отступ между столбцами
                    mainAxisSpacing: 16, // Отступ между строками
                    childAspectRatio: 0.9, // Соотношение ширины к высоте карточки
                  ),
                  itemCount: 4, // Количество карточек
                  itemBuilder: (context, index) {
                    final titles = ['The Sleep Hour', 'Easy on the Mission', 'Relax with Me', 'Sun and Energy'];
                    final subtitles = ['Ashna Mukherjee', 'Peter Mach', 'Amanda James', 'Micheal Hiu'];
                    final likes = ['3 Sessions', '5 minutes', '3 Sessions', '5 minutes'];

                    final images = [
                      const AssetImage('images/p_m1.png'),
                      const AssetImage('images/p_m2.png'),
                      const AssetImage('images/p_m3.png'),
                      const AssetImage('images/p_m4.png'),
                    ];
                    return _buildCard(
                      title: titles[index],
                      subtitle: subtitles[index],
                      like: likes[index],
                      image: images[index],
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
  Widget _buildCard({
    required String title,
    required String subtitle,
    required String like,
    required AssetImage image,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Фон карточки
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 47, 47, 47).withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Изображение
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image(
              image: image,
              width: double.infinity,
              height: 100, // Высота изображения
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Заголовок
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                 // Отступ между заголовком и подзаголовком
                // Подзаголовок
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8), // Отступ между подзаголовком и нижней частью
                // Нижняя часть: иконка сердечка и текст "like", текст "Start >"
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 12,
                        ),
                        const SizedBox(width: 4), // Отступ между иконкой и текстом
                        Text(
                          like,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Start >',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  // Функция для создания верхней карточки
  Widget _buildTextCard({required String text, bool isFirstCard = false}) {
    return SizedBox(
      height: 3.2, // Устанавливаем высоту карточки
      child: Card(
        color: isFirstCard ? const Color(0xFF039EA2) : const Color(0xFFCDFDFE), // Цвет карточки
        elevation: 0, // Убираем тень, если она не нужна
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Закругленные углы
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Внутренние отступы
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: isFirstCard ? Colors.white : const Color(0xFF039EA2), // Цвет текста
                fontSize: 16,
              ),
              textAlign: TextAlign.center, // Выравнивание текста по центру
            ),
          ),
        ),
      ),
    );
  }
}