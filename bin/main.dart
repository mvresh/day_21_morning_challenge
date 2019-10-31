// Challenge 1
// Write test cases for the next challenges and make sure to include boundary conditions
// DO THIS FIRST

// Challenge 2
// Track the Robot
// This robot roams around a 2D grid. It starts at (0, 0) facing North.
// After each time it moves, the robot rotates 90 degrees clockwise.
// Given the amount the robot has moved each time, you have to calculate the robot's final position.
// Example
// trackRobot([20, 30, 10, 40]) ➞ [-10, 10]
import 'dart:math';
List<int> trackRobot(List<int> movements) {
  int i = 0;
  List iList = List();
  int j = 0;
  List jList = List();

  movements.forEach((movement) {
    if ((movements.indexOf(movement)) % 2 == 0) {
      jList.add(movement);
    }
    else {
      iList.add(movement);
    }
  });
  iList.forEach((item){iList.indexOf(item) % 2 == 0 ? i = i + item : i = i - item;});
  jList.forEach((item){jList.indexOf(item) % 2 == 0 ? j = j + item : j = j - item;});
  return [i,j];
}

// Challenge 3
// Vending Machine
// Your task is to create a function that simulates a vending machine.
// Given an amount of money (in cents ¢ to make it simpler) and a productNumber,
// the vending machine should output the correct product name and give back the
// correct amount of change.

// The coins used for the change are the following: [100, 50, 20, 10, 5]

// The return value is a map with 2 properties:
// product: the product name that the user selected.
// change: a list of coins returned (can be empty, must be sorted in descending order).

Map vendingMachine(List<int> input) {
  Map output = {'product': null,'change':List<int>()};
  List<Map> products = [
    {'number': 1, 'price': 100, 'name': 'Orange juice'},
    {'number': 2, 'price': 200, 'name': 'Soda'},
    {'number': 3, 'price': 150, 'name': 'Chocolate snack'},
    {'number': 4, 'price': 250, 'name': 'Cookies'},
    {'number': 5, 'price': 180, 'name': 'Gummy bears'},
    {'number': 6, 'price': 120, 'name': 'Crackers'},
    {'number': 7, 'price': 220, 'name': 'Potato chips'},
    {'number': 8, 'price': 80, 'name': 'Small snack'},
  ];

  if (input[1] <= products.length){
    output['product'] = products[input[1]-1]['name'];
    int changeAmount = input[0] - products[input[1]-1]['price'];
    List coinsList = [100, 50, 20, 10, 5];
    if(changeAmount > coinsList.reduce((curr, next) => curr < next? curr: next)){
      int i = 0;
      while(i < coinsList.length){
        while (changeAmount >= coinsList[i]){
          changeAmount -= coinsList[i];
          output['change'].add(coinsList[i]);
        }
        i++;
      }
    }
    else{
      return null;
    }
    return output;
  }
  return null;
}

main() {
  print(trackRobot([20,30,10,40]));
  print(trackRobot([]));
  print(trackRobot([-10]));
  print(vendingMachine([300,4]));
  print(vendingMachine([300,8]));
}
