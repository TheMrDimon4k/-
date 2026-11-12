import 'dart:io';

void main() {
  // Задание 1: Фейсконтроль (статический)
  int ageStatic = 20;
  if (ageStatic >= 18) {
    print("Проходите");
  } else {
    print("Вход запрещен");
  }

  // Задание 2: Интерактивный фейсконтроль
  print("\nСколько вам лет?");
  String? ageInput = stdin.readLineSync();
  int age = int.parse(ageInput ?? "0");
  if (age >= 18) {
    print("Проходите");
  } else {
    print("Вход запрещен");
  }

  // Задание 3: Авторизация
  String correctUser = "admin";
  String correctPass = "12345";
  
  print("\nВведите логин:");
  String? login = stdin.readLineSync();
  print("Введите пароль:");
  String? password = stdin.readLineSync();

  if (login == correctUser && password == correctPass) {
    print("Доступ разрешен!");
  } else {
    print("Неверный логин или пароль.");
  }

  // Задание 4: Банкомат (switch)
  print("\nМеню банкомата: 1 - Баланс, 2 - Снятие, 3 - Пополнение");
  int choice = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  switch (choice) {
    case 1:
      print("Ваш баланс: 5000 сом");
      break;
    case 2:
      print("Введите сумму для снятия...");
      break;
    case 3:
      print("Введите сумму для пополнения...");
      break;
    default:
      print("Неверный выбор.");
  }

  // Техническое задание: Текстовый квест с вложенностью и оператором &&
  bool hasKey = true;
  int health = 50;

  print("\nВы стоите перед тяжелой дубовой дверью замка. У вас есть ключ? ${hasKey ? 'Да' : 'Нет'}.");
  print("1. Попробовать выбить дверь силой");
  print("2. Открыть дверь ключом");
  
  int questChoice = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (questChoice == 1) {
    print("Вы попытались выбить дверь, но потеряли здоровье.");
    health -= 20;
  } else if (questChoice == 2) {
    // Условие с &&
    if (hasKey && health >= 30) {
      print("Вы успешно отперли дверь ключом и вошли внутрь сокровищницы!");
    } else {
      print("Дверь не поддается: либо нет ключа, либо у вас слишком мало сил (< 30 HP).");
    }
  } else {
    print("Неверная команда. Вы ушли ни с чем.");
  }
}