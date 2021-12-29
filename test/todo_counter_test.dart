import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/todo_counter.dart';

void main() {
  group("counter keeps track of completed todos", () {
    final counter = CompletedTodoCounter();

    test("counter resets to 0", () {
      counter.decreaseCounter();
      expect(counter.completed, 55);
    });
  });
}
