
void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('task 1 complete');
}

Future<String> task2() async {
  // Declare result initially
  String result = 'Initial task 2 data';

  await Future.delayed(const Duration(seconds: 3), () {
    result = 'task 2 data'; // Update result after delay
    print('task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('task 3 complete with $task2Data');
}
