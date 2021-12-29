import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/todo_counter.dart';

void main() {
  group("counter keeps track of completed todos", () {
    final counter = CompletedTodoCounter();

    // test("counter decreases to 55", () {
    //   counter.decreaseCounter();
    //   expect(counter.completed, 55);
    // });

    // test("counter increases to 57", () {
    //   counter.increaseCounter();
    //   expect(counter.completed, 56);
    // });

    test("counter resets to 50", () {
      counter.increaseCounter();
      expect(counter.completed, 57);

      counter.increaseCounter(); // +1
      counter.decreaseCounter(); // -1
      counter.increaseCounter(); // +1
      counter.increaseCounter(); // +1
      counter.decreaseCounter(); // -1
      expect(counter.completed, 58);
    });
  });
}
