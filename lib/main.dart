import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('\nTo-Do List App');
    print('1. Add a task');
    print('2. View tasks');
    print('3. Remove a task');
    print('4. Exit');
    stdout.write('Choose an option: ');

    String? input = stdin.readLineSync();
    if (input == '1') {
      stdout.write('Enter the task: ');
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        tasks.add(task);
        print('Task added.');
      } else {
        print('Task cannot be empty!');
      }
    } else if (input == '2') {
      if (tasks.isEmpty) {
        print('No tasks available.');
      } else {
        print('\nYour Tasks:');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } else if (input == '3') {
      if (tasks.isEmpty) {
        print('No tasks to remove.');
      } else {
        stdout.write('Enter task number to remove: ');
        String? indexInput = stdin.readLineSync();
        int? index = int.tryParse(indexInput ?? '');
        if (index != null && index > 0 && index <= tasks.length) {
          print('Removed: ${tasks.removeAt(index - 1)}');
        } else {
          print('Invalid task number!');
        }
      }
    } else if (input == '4') {
      print('Exiting...');
      break;
    } else {
      print('Invalid option! Please choose between 1-4.');
    }
  }
}
