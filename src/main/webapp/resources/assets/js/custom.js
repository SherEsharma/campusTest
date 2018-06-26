
/* ================= fresher/experience hide Js ===================== */
$(document).ready(function() {

$("#test").hide(); 
  $("#fre-exp").change(function(){
      if($("#fre-exp").val()=="0"){
        $("#test").hide(); 
      }
      else {
        $("#test").show();
      }
  });
});

/* ================= Next Button Js ===================== */

var questionNumber=0;
var questions=document.querySelectorAll('.question');
    function next(){
      questionNumber++;
      if(questions.length>questionNumber)
      {
            document.querySelector('.active').classList.remove('active');
            questions[questionNumber].classList.add('active');
      }
    }

/* ================= timer Js ===================== */
document.getElementById('timer').innerHTML =
15 + ":" + 00;
startTimer();

function startTimer() {
  var presentTime = document.getElementById('timer').innerHTML;
  var timeArray = presentTime.split(/[:]+/);
  var m = timeArray[0];
  var s = checkSecond((timeArray[1] - 1));
  if(s==59) {
  	m=m-1
  }
  if(m<0) {
  	alert('time completed.');
  	window.location.href = "select-category.html";
  }
  
  document.getElementById('timer').innerHTML =
    m + ":" + s;
  setTimeout(startTimer, 1000);
}

function checkSecond(sec) {
  if (sec < 10 && sec >= 0) {sec = "0" + sec}; // add zero in front of numbers < 10
  if (sec < 0) {sec = "59"};
  return sec;
}


