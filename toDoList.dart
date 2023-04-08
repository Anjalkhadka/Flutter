import 'dart:io';

void main() {
  // Define an empty list to hold tasks
  List<String> tasks = [];

  // Main program loop
  while (true) {
    print("To-Do List Application\n");
    print("1. Add task");
    print("2. Remove task");
    print("3. View tasks");
    print("4. Quit");
    stdout.write("\nEnter choice: ");
    String choice = stdin.readLineSync()!;
    switch (choice) {
      case '1':
        addTask(tasks);
        break;
      case '2':
        removeTask(tasks);
        break;
      case '3':
        viewTasks(tasks);
        break;
      case '4':
        exit(0);
      default:
        print("Invalid choice. Please try again.");
    }
  }
}

// Function to add a task to the list
void addTask(List<String> tasks) {
  stdout.write("Enter task: ");
  String task = stdin.readLineSync()!;
  tasks.add(task);
  print("Task added successfully.");
}

// Function to remove a task from the list
void removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print("No tasks to remove.");
  } else {
    print("Select task to remove:");
    for (int i = 0; i < tasks.length; i++) {
      print("${i + 1}. ${tasks[i]}");
    }
    stdout.write("Enter task number: ");
    int choice = int.parse(stdin.readLineSync()!);
    if (choice < 1 || choice > tasks.length) {
      print("Invalid choice.");
    } else {
      tasks.removeAt(choice - 1);
      print("Task removed successfully.");
    }
  }
}

// Function to view all tasks in the list
void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print("No tasks to view.");
  } else {
    print("Tasks:");
    for (int i = 0; i < tasks.length; i++) {
      print("${i + 1}. ${tasks[i]}");
    }
  }
}
