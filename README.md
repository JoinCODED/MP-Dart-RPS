### Rock, Paper, Scissors 🪨📄✂️

Build a game of rock, paper, scissors that uses the command line to ask the user for their move.

- Show the user a prompt to enter their move.
- If the user enters (`rock`,`paper`,`scissors`) treat is as a valid move.
- If the user enters anything else, show them a message that says:
  - `Invalid move. Please enter rock, paper, or scissors.`
  - Show the user a prompt to enter their move again.
- Generate a random computer move.
- Show the User his move and the computer's move and the result.
- The game should repeat until the user enters `quit`.

### Hints 💡:

- Create a new repository in your GitHub account and clone it to your local machine.
- Create a new file called `main.dart` in the root directory of your repository.
- Create an entry point function called `main` that takes no arguments.
- To read the user's input:
  - Import `dart:io`.
  - `import 'dart:io';`
  - Use `stdin.readLineSync()` to read the user's input, then store it in a final variable called `userInput`.
- To generate a random number between 0 and 2:
  - Import `dart:math`.
  - Create a variable called `randomNumber` before your loop.
    ```dart
    final randomNumber = Random();
    ```
  - Inside your loop, call `randomNumber.nextInt(3);` and store it in a new variable.
  - This way a new number will be generated in each loop iteration.
- To run the game:
  - Use `dart main.dart` to run the game in your terminal.
  - `dart main.dart`
