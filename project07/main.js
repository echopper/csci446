var guessesLeft = 10;
var answer = 42;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

$('document').ready(function() {
  $('#btnGuess').click(function() {
    var thisGuess = $('#guess').val();
    if(thisGuess != answer) {
      guessesLeft--;
      updateScore(guessesLeft);
    }
  });
});

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').text(score);
}
