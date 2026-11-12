import 'dart:io';

void main() {
  // Задание 1: Таймер от 10 до 1
  for (int i = 10; i >= 1; i--) {
    print(i);
  }
  print("Старт!\n");

  // Задание 2: Попугай (введите "стоп" для выхода)
  /*
  print("Игра 'Попугай' (введите 'стоп' для выхода):");
  while (true) {
    String input = stdin.readLineSync() ?? "";
    if (input == "стоп") {
      print("Пока!");
      break;
    }
    print("Эхо: $input");
  }
  */

  // Задание 3: Четные числа от 1 до 20
  print("Четные числа от 1 до 20:");
  for (int i = 1; i <= 20; i++) {
    if (i % 2 != 0) continue;
    print(i);
  }

  // Задание 4: Сейф (do-while)
  /*
  String pin;
  do {
    print("Введите пин-код (1234):");
    pin = stdin.readLineSync() ?? "";
  } while (pin != "1234");
  print("Сейф открыт!");
  */

  // Техническое задание: Бесконечное меню с обработкой ошибок
  bool running = true;
  while (running) {
    print("\n--- ГЛАВНОЕ МЕНЮ ---");
    print("1. Играть");
    print("2. Настройки");
    print("3. Выход");
    print("Выберите пункт:");

    String? input = stdin.readLineSync();
    int? menuChoice = int.tryParse(input ?? "");

    if (menuChoice == null) {
      print("Ошибка: введите цифру, а не текст!");
      continue; // Возврат в начало цикла без падения программы
    }

    switch (menuChoice) {
      case 1:
        print("Запуск игры...");
        break;
      case 2:
        print("Открытие настроек...");
        break;
      case 3:
        print("Выход из программы.");
        running = false;
        break;
      default:
        print("Такого пункта меню нет.");
    }
  }
}