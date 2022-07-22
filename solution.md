1. Create an entry point function called `main` that takes no arguments.

```dart
void main() {
  // Your code here.
}
```

2. Show the user a prompt to enter their move.

```dart
void main() {
    print('Enter your move: rock, paper or scissors?');
}
```

3. Import `dart:io`.

```dart
import 'dart:io';
```

4. Use `stdin.readLineSync()` to read the user's input, then store it in a final variable called `userMove`.

```dart
final userMove = stdin.readLineSync();
```

5. To get the game to run infinitely, use a while loop.

```dart
while (true) {
    print('Enter your move: rock, paper or scissors?');
    final userInput = stdin.readLineSync();
}
```

6. Create an if statement that checks if the user's move is valid.

```dart
if (userInput == 'rock' || userInput == 'paper' || userInput == 'scissors') {
    print('You entered $userInput');
} else {
    print('Invalid move. Please enter rock, paper or scissors.');
}
```

7. Let's also check if the user entered `quit` and exit the loop.

```dart
if (userInput == 'rock' || userInput == 'paper' || userInput == 'scissors') {
    print('You entered $userInput');
} else if (userInput == 'quit') {
    break;
} else {
    print('Invalid move. Please enter rock, paper or scissors.');
}
```

8. Create an enum called `Move` that has the following values:

```dart
enum Move {
    rock,
    paper,
    scissors
}
```

9. Create a variable called `playerMove` that is assigned to the value of the `Move` enum based on the user's input.

```dart
      if (userInput == 'rock') {
        playerMove = Move.rock;
      } else if (userInput == 'paper') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
```

10. To generate a random computer move, we have to generate a random number between 0 and 2. Create this variable before your loop starts.

```dart
final randomNumber = Random();
```

11. Import `dart:math`.

```dart
import 'dart:math';
```

12. Create a new variable called computerMoveNumber and assign it to `randomNumber.nextInt(3)`;

```dart
final computerMoveNumber = randomNumber.nextInt(3);
```

13. Create a variable called computerMove that is assigned to the value of the `Move` enum based on the random number.

```dart
    var computerMove;
      if (computerMoveNumber == 0) {
        computerMove = Move.rock;
      } else if (computerMoveNumber == 1) {
        computerMove = Move.paper;
      } else {
        computerMove = Move.scissors;
      }
```

13. Implement the game logic!

```dart
      if (playerMove == computerMove) {
        print("Draw");
      } else if (computerMove == Move.paper && playerMove == Move.rock) {
        print("Computer wins");
      } else if (computerMove == Move.rock && playerMove == Move.scissors) {
        print("Computer wins");
      } else if (computerMove == Move.scissors && playerMove == Move.paper) {
        print("Computer wins");
      } else {
        print("Player wins");
      }
```

14. Complete code:

```dart
import 'dart:io';
import 'dart:math';

enum Move {
  rock,
  paper,
  scissors,
}

void main() {
  final randomNumber = Random();
  while (true) {
    print('Enter your move: rock, paper or scissors?');
    final userInput = stdin.readLineSync();
    if (userInput == 'rock' ||
        userInput == 'paper' ||
        userInput == 'scissors') {
      var playerMove;
      if (userInput == 'rock') {
        playerMove = Move.rock;
      } else if (userInput == 'paper') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }

      final computerMoveNumber = randomNumber.nextInt(3);
      var computerMove;
      if (computerMoveNumber == 0) {
        computerMove = Move.paper;
      } else if (computerMoveNumber == 1) {
        computerMove = Move.rock;
      } else {
        computerMove = Move.scissors;
      }
      if (playerMove == computerMove) {
        print("Draw");
      } else if (computerMove == Move.paper && playerMove == Move.rock) {
        print("Computer wins");
      } else if (computerMove == Move.rock && playerMove == Move.scissors) {
        print("Computer wins");
      } else if (computerMove == Move.scissors && playerMove == Move.paper) {
        print("Computer wins");
      } else {
        print("Player wins");
      }
    } else if (userInput == 'quit') {
      break;
    } else {
      print('Invalid move');
    }
  }
}
```
