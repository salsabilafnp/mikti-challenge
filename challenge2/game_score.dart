// Calculate the Average Game Score
double calculateAverageScore(List<int> scores) {
  var sum = scores.reduce((value, element) => value + element);
  var avg = sum / scores.length;
  return double.parse(avg.toStringAsFixed(2));
}

// Function to determine the winner and display the result
void determineWinner(Map<String, List<int>> playerScores) {
  var winners = [];
  var highestScore = 0.0;

  playerScores.forEach((player, scores) {
    var avgScore = calculateAverageScore(scores);
    // Display average scores per team
    print("Average $player score: $avgScore");

    // Check the highscore
    if (avgScore > highestScore) {
      winners = [player];
      highestScore = avgScore;
    } else if (avgScore == highestScore) {
      winners.add(player);
    }
  });

  // Display the winner
  if (winners.length == 1) {
    print("${winners[0]} win the trophy with $highestScore points.");
  } else {
    print(
        "It's a draw between ${winners.join(' and ')} with $highestScore points.");
  }
}

// Function to determine the binus winner and display the result
void determineBonusWinner(Map<String, List<int>> playerScores) {
  var winners = [];
  var highestScore = 0.0;

  playerScores.forEach((player, scores) {
    var avgScore = calculateAverageScore(scores);
    // Display average scores per team
    print("Average $player score: $avgScore");

    // Check the highscore pass the bonus round
    if (avgScore >= 100) {
      if (avgScore > highestScore) {
        winners = [player];
        highestScore = avgScore;
      } else if (avgScore == highestScore) {
        winners.add(player);
      }
    }
  });

  // Display the winner
  if (winners.length == 1) {
    print("${winners[0]} win the trophy");
  } else {
    print("It's a draw between ${winners.join(' and ')}.");
  }
}

// main function to run the program
void main() {
  // Data Uji 1
  var playerScores = {
    'Lumba-Lumba': [96, 108, 89],
    'Koala': [88, 91, 110],
  };

  // Determine and display the winner for 1st Game
  print("Game 1");
  determineWinner(playerScores);

  // Data Bonus 1
  var bonusScores1 = {
    'Lumba-Lumba': [97, 112, 101],
    'Koala': [109, 95, 123],
  };

  // Determine and display the winner for 1st Bonus Game
  print("\nGame Bonus 1");
  determineBonusWinner(bonusScores1);

  // Data Bonus 2
  var bonusScores2 = {
    'Lumba-Lumba': [97, 112, 101],
    'Koala': [109, 95, 106],
  };

  // Determine and display the winner for 2nd Bonus Game
  print("\nGame Bonus 2");
  determineBonusWinner(bonusScores2);
}
