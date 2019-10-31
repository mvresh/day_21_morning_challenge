import "package:test/test.dart";
import 'main.dart';

void main() {
  test("Challenge 2 a", () {
    expect(trackRobot([20, 30, 10, 40]), equals([-10, 10]));
  });

  test("Challenge 2 b", () {
    expect(trackRobot([-10]), equals([0,-10]));
  });

  test("Challenge 2 c", () {
    expect(trackRobot([]), equals([0,0]));
  });

  test("Challenge 3 a", () {
    expect(vendingMachine([300,4]), equals({'product':'Cookies','change':[50]}));
  });

  test("Challenge 3 b", () {
    expect(vendingMachine([200,4]), equals(null));
  });

  test("Challenge 3 c", () {
    expect(vendingMachine([300,11]), equals(null));
  });

}