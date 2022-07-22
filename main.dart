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
