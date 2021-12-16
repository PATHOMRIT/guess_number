//ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';

void main() {
  var maxrandom = 100;
  var random = Random();
  var answer = random.nextInt(maxrandom);
  var Countcorect = 0;
  print('╔══════════════════════════════════════════════');
  print('║               GUESS THE NUMBER               ');
  print('╟──────────────────────────────────────────────');
  while (true) {
    Countcorect++;
    stdout.write('║ Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess != null){
    if(guess==answer){
      stdout.write('║ ➜ ' + answer.toString() + ' is CORRECT ❤, ' +'total guesses: ' + Countcorect.toString() + '         ');
      print('');
      print('╟──────────────────────────────────────────────');
      print('║                      END                     ');
      print('╚══════════════════════════════════════════════');
      break;
    }else if(guess > answer){
      print('║ ➜ ' + guess.toString() + ' is TOO HIGH! ▼                          ');
      print('╟──────────────────────────────────────────────');
    }else{
      print('║ ➜ ' + guess.toString() + ' is TOO LOW! ▲                         ');
      print('╟──────────────────────────────────────────────');
    }
  }
}
}