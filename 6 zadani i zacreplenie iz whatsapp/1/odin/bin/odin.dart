import 'dart:io';

void main() {
  // Задание 1: Смартфон
  String brand = "Samsung Galaxy S23";
  int releaseYear = 2023;
  double price = 799.99;
  bool hasNfc = true;

  // Задание 2: Список цветов
  List<String> colors = ["Черный", "Белый", "Зеленый"];
  print("Количество доступных цветов: ${colors.length}");

  // Задание 3: Словарь Map для устройства
  Map<String, dynamic> device = {
    "title": brand,
    "year": releaseYear,
    "price": price,
    "nfc": hasNfc,
    "colors": colors,
  };

  // Задание 4: Карточка товара
  print("\n=== ХАРАКТЕРИСТИКИ ===");
  print("Модель: ${device["title"]}");
  print("Год выпуска: ${device["year"]}");
  print("Цена: \$${device["price"]}");
  print("NFC: ${device["nfc"] ? "Есть" : "Нет"}");
  print("Цвета: ${device["colors"].join(", ")}");
  print("======================\n");

  // Техническое задание: Игровой персонаж
  String charName = "Артур";
  int level = 5;
  int currentHp = 85;
  int maxHp = 100;
  bool isAlive = true;
  List<String> equipment = ["Стальной меч", "Кожаный доспех", "Зелье здоровья", "Факел"];

  print("=== СТАТУС ПЕРСОНАЖА ===");
  print("Имя: $charName (Уровень: $level)");
  print("Здоровье: $currentHp / $maxHp");
  print("Статус: ${isAlive ? "Жив" : "Мертв"}");
  print("Экипировка: $equipment");
  print("=========================");
}