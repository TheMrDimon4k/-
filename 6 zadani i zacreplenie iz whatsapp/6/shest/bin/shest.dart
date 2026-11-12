import 'dart:io';

void main() {
  // Задание 1 & 2: try-catch-finally с возрастом
  print("Введите ваш возраст:");
  try {
    String input = stdin.readLineSync() ?? "";
    int userAge = int.parse(input);
    print("Ваш возраст: $userAge");
  } on FormatException {
    print("Ошибка: введено не число");
  } finally {
    print("Проверка ввода завершена\n");
  }

  // Задание 3: Безопасное деление
  try {
    double result = safeDivide(10, 0);
    print("Результат деления: $result");
  } catch (e) {
    print("Перехвачено исключение: $e");
  }

  // Задание 4: Интерактивный калькулятор в цикле с защитой
  /*
  while (true) {
    try {
      print("Введите первое число (или 'q' для выхода):");
      String input1 = stdin.readLineSync() ?? "";
      if (input1 == 'q') break;
      double a = double.parse(input1);

      print("Введите оператор (+, -, *, /):");
      String op = stdin.readLineSync() ?? "";

      print("Введите второе число:");
      double b = double.parse(stdin.readLineSync() ?? "");

      double res = 0;
      switch (op) {
        case '+': res = a + b; break;
        case '-': res = a - b; break;
        case '*': res = a * b; break;
        case '/':
          if (b == 0) throw Exception("На ноль делить нельзя!");
          res = a / b;
          break;
        default:
          print("Неизвестный оператор");
          continue;
      }
      print("Результат: $res\n");
    } catch (e) {
      print("Ошибка ввода или вычислений: $e. Попробуйте снова.\n");
    }
  }
  */

  // Техническое задание: Безопасный банк (Симулятор банкомата)
  double balance = 1000.0;
  bool bankRunning = true;

  try {
    while (bankRunning) {
      print("\n=== БЕЗОПАСНЫЙ БАНК ===");
      print("Текущий баланс: \$${balance.toStringAsFixed(2)}");
      print("1. Пополнить");
      print("2. Снять");
      print("3. Баланс");
      print("0. Выход");
      print("Выберите операцию:");

      try {
        String? choiceStr = stdin.readLineSync();
        int choice = int.parse(choiceStr ?? "");

        if (choice == 1) {
          print("Введите сумму для пополнения:");
          double amount = double.parse(stdin.readLineSync() ?? "");
          if (amount <= 0) {
            print("Ошибка: сумма должна быть больше нуля.");
            continue;
          }
          balance += amount;
          print("Успешно пополнено на \$$amount");
        } else if (choice == 2) {
          print("Введите сумму для снятия:");
          double amount = double.parse(stdin.readLineSync() ?? "");
          if (amount <= 0) {
            print("Ошибка: сумма должна быть больше нуля.");
            continue;
          }
          if (amount > balance) {
            print("Предупреждение: недостаточно средств на счете!");
            continue;
          }
          balance -= amount;
          print("Успешно снято \$$amount");
        } else if (choice == 3) {
          print("Ваш баланс: \$$balance");
        } else if (choice == 0) {
          bankRunning = false;
        } else {
          print("Неверный пункт меню.");
        }
      } on FormatException {
        print("Ошибка ввода: пожалуйста, вводите только числа!");
      }
    }
  } finally {
    print("Сессия завершена. Все данные счета успешно сохранены.");
  }
}

// Функция для Задания 3
double safeDivide(int a, int b) {
  if (b == 0) {
    throw Exception('Деление на ноль запрещено');
  }
  return a / b;
}