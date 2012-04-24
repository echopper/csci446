var guessesLeft = 10;
var answer = getRandomInt(1,100);
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

$('document').ready(function() {
  $('#btnGuess').click(function() {
    makeAGuess();
  });
  $('#guess').keydown(function(event) {
    if(event.keyCode == 13) {
      makeAGuess();
    }
  });


  $('#submitscore').click(function() {
    crownAChampion();
  });
  $('#name').keydown(function(event) {
    if(event.keyCode == 13) {
      crownAChampion();
    }
  });

  $('#prompt a').click(function() {
    playAgain();
  });

});

// Initialize the game
$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function makeAGuess() {
  var thisGuess = $('#guess').val();
  if(thisGuess == "") {
    alert("You must make a guess!");
  } else if(thisGuess != answer) {
    if(thisGuess > answer)
      alert("Oooh. You're high!");
    else
      alert("How low can you be?");
    if(guessesLeft > 0)
      guessesLeft--;
    updateScore(guessesLeft);
  } else {
    $('#guesser').slideUp();
    $('#winner').slideDown();
  }
  if(guessesLeft == 0) {
    $('#guesser').slideUp();
    showPrompt("YOU HAVE LOST");
  }
}

function crownAChampion() {
  addScore(guessesLeft, $('#name').val());
  $('#winner').slideUp();
  showPrompt("Play again?");
}

function showPrompt(prompt) {
  $('h2#display').text(prompt);
  $('#prompt').slideDown();
}

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function showHighScores() {
  $('div#highScores').text("");
  for (var i = 0; i < highScores.length; ++i) {
    $('div#highScores').append("<p>" + highScores[i][0] + " " + highScores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').text(score);
}

function addScore(score, name) {
  highScores.push([score, name]);
  highScores.sort();
  highScores.reverse();
  showHighScores();
}

function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function playAgain() {
  answer = getRandomInt(1,100);
  guessesLeft = 10;
  updateScore(guessesLeft);
  $('#prompt').slideUp();
  $('#guesser').slideDown();
}
