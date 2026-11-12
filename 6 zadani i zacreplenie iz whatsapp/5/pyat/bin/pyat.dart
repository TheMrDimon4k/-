void main() {
  // Задание 1: Функция площади прямоугольника
  double area = calculateArea(5.0, 3.0);
  print("Площадь прямоугольника: $area");

  // Задание 2: Стрелочная функция с именованными параметрами
  double areaNamed = calculateAreaNamed(width: 4.0, height: 2.5);
  print("Площадь (именованная): $areaNamed");

  // Задание 3: Фильтрация положительных чисел через .where()
  List<int> numbers = [2, -5, 8, -1, 10, 4];
  List<int> positives = numbers.where((n) => n > 0).toList();
  print("Положительные числа: $positives");

  // Задание 4: Преобразование через .map()
  List<String> words = ['apple', 'banana', 'kiwi'];
  List<int> wordLengths = words.map((w) => w.length).toList();
  print("Длины слов: $wordLengths\n");

  // Техническое задание: Анализатор корзины интернет-магазина (ФП)
  List<Map<String, dynamic>> cart = [
    {"name": "Смартфон", "category": "Электроника", "price": 500.0},
    {"name": "Футболка", "category": "Одежда", "price": 20.0},
    {"name": "Наушники", "category": "Электроника", "price": 80.0},
    {"name": "Джинсы", "category": "Одежда", "price": 45.0},
  ];

  // 1. Товары из категории "Электроника" через .where
  var electronics = cart.where((item) => item["category"] == "Электроника").toList();
  print("Электроника в корзине: $electronics");

  // 2. Только названия товаров через .map
  List<String> productNames = cart.map((item) => item["name"].toString()).toList();
  print("Названия товаров: $productNames");

  // 3. Общая стоимость через .fold
  double totalPrice = cart.fold(0.0, (sum, item) => sum + (item["price"] as double));
  print("Общая стоимость корзины: \$$totalPrice");
}

// Задание 1
double calculateArea(double width, double height) {
  return width * height;
}

// Задание 2
double calculateAreaNamed({required double width, required double height}) => width * height;