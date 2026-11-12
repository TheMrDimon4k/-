import 'dart:io';

void main() {
  print('Какое твоё имя, путник?');
  final String name = stdin.readLineSync() ?? 'Путник';
  print('Приветствую тебя, $name!');
  
  print('Сколько у тебя золота, путник?');
  int gold = int.tryParse(stdin.readLineSync() ?? '') ?? 100;
  
  if (gold > 50) {
    print('У тебя много золота! Поделишься?');
  } else if (gold < 50) {
    print('Да ты нищий!');
  }

  // Инвентарь создается ОДИН раз до начала игрового цикла
  List<String> inventory = ['Ржавый меч', 'Зелье исцеления'];
  inventory.add('энегетос');

  bool isPlaying = true;
  
  while (isPlaying) {
    // Вызываем нашу отдельную функцию отрисовки меню
    showMenu();
    
    int choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    
    switch (choice) {
      case 1:
        print('У тебя $gold золота');
        break;
      case 2:
        gold += 15; // Сохраняем найденное золото в переменную
        print('Ты нашел 15 золота. Теперь у тебя $gold золота');
        break;
      case 3:
        print('Прощай, $name!');
        isPlaying = false;
        break;
      case 4:
        // Вызываем функцию показа инвентаря
        showInventory(inventory);
        break;
      default:
        print('Неизвестная команда');
        break;
    }
  }
}

// Функции вынесены за пределы main()
void showMenu() {
  print('\n------- МЕНЮ -------');
  print('1. Показать количество золота');
  print('2. Искать золото');
  print('3. Выйти из игры');
  print('4. Показать инвентарь');
  print('Выбери действие:');
}

void showInventory(List<String> items) {
  print('В рюкзаке предметов: ${items.length}');
  print('Содержимое: $items');
}