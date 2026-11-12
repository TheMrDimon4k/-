import 'dart:io';

void main() {
  // Задание 1: Города Кыргызстана
  List<String> cities = ["Бишкек", "Ош", "Джалал-Абад", "Каракол", "Талас"];
  print("Всего городов: ${cities.length}");
  print("Первый город: ${cities.first}, Последний: ${cities.last}\n");

  // Задание 2: Запрос трех имен
  List<String> names = [];
  print("Введите 3 имени:");
  for (int i = 0; i < 3; i++) {
    print("Имя ${i + 1}:");
    String name = stdin.readLineSync() ?? "";
    names.add(name);
  }
  print("Список имен: $names\n");

  // Задание 3: Средний балл оценок
  List<int> grades = [4, 5, 3, 5, 4, 5, 2];
  int sum = grades.fold(0, (a, b) => a + b);
  double average = sum / grades.length;
  print("Средний балл: ${average.toStringAsFixed(2)}\n");

  // Задание 4: Склад товаров Map
  Map<String, int> warehouse = {
    "ноутбук": 5,
    "мышка": 15,
    "клавиатура": 8,
  };
  print("Введите название товара для проверки остатка:");
  String searchItem = (stdin.readLineSync() ?? "").toLowerCase();
  if (warehouse.containsKey(searchItem)) {
    print("Остаток товара '$searchItem': ${warehouse[searchItem]} шт.");
  } else {
    print("Такого товара нет на складе.");
  }

  // Техническое задание: Менеджер задач (To-Do List)
  List<String> tasks = [];
  bool active = true;

  while (active) {
    print("\n--- МЕНЕДЖЕР ЗАДАЧ ---");
    if (tasks.isEmpty) {
      print("Список задач пуст.");
    } else {
      for (int i = 0; i < tasks.length; i++) {
        print("${i + 1}. ${tasks[i]}");
      }
    }
    print("\n1. Добавить задачу");
    print("2. Удалить задачу");
    print("3. Выход");
    print("Выберите действие:");

    String? choice = stdin.readLineSync();
    if (choice == "1") {
      print("Введите текст задачи:");
      String taskText = stdin.readLineSync() ?? "";
      if (taskText.isNotEmpty) tasks.add(taskText);
    } else if (choice == "2") {
      if (tasks.isEmpty) {
        print("Нечего удалять!");
        continue;
      }
      print("Введите номер задачи для удаления:");
      int? index = int.tryParse(stdin.readLineSync() ?? "");
      if (index != null && index >= 1 && index <= tasks.length) {
        String removed = tasks.removeAt(index - 1);
        print("Удалена задача: '$removed'");
      } else {
        print("Ошибка: неверный номер задачи.");
      }
    } else if (choice == "3") {
      active = false;
      print("Работа менеджера задач завершена.");
    }
  }
}