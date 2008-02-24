function quiz_error() {
  alert('There has been a system error, please print this homework and continue on paper.');
}

function choose_answer(quiz_question_id, choice_id, url, params) {
  quiz_question = $(quiz_question_id);
  choice = $(choice_id);

  // throttle multiple requests
  if (quiz_question.getAttribute('disabled') == 'disabled') { return false; }
  else { quiz_question.setAttribute('disabled', 'disabled'); }
  
  new Ajax.Request( url,
                    { asynchronous : true,
                      evalScripts  : true,
                      parameters   : params,
                      onSuccess    : function(request) { select_choice(quiz_question, choice); quiz_question.setAttribute('disabled', ''); },
                      onFailure    : function(request) { alert('Your answer was unable to be saved.  Has the due date passed?'); }
                    }
                  );

  return true;
}

function select_choice(quiz_question, choice) {
  $A(quiz_question.getElementsByTagName('li')).each( function(element) { element.className = ''; } );
  choice.className = 'selected';
}

function answerShowHide(obj) {
	var questionId = obj.getAttribute("questionId");
	var answer = obj.parentNode.select(".answer").first();
	var analysis = obj.parentNode.select(".analysis").first();

	if (answer.style.color == "red") {
		answer.style.color = "black";
		analysis.style.display = "none";
		obj.innerHTML = "Show Answer";
	}
	else {
		answer.style.color = "red";
		analysis.style.display = "block";
		obj.innerHTML = "Hide Answer";
	}
}

function switchTab(tab) {
	document.body.id = tab;
	$A($('tabs').childNodes).each( function(obj) { if (obj.style) { obj.style.display = "none"; } } );
	$(tab + "-tab").style.display = "block";
}

window.onload = function() {
  $$('.accessible').collect( function(obj) { obj.hide(); } );
  $$('.unaccessible').collect( function(obj) { obj.show(); } );

	if (document.getElementById('tabNavigation')) { $('tabNavigation').style.display = "block"; }
	if (document.getElementById('documents-tab')) { $('documents-tab').style.display = "none"; }
	if (document.getElementById('quizzes-tab')) { $('quizzes-tab').style.display = "none"; }
	if (document.getElementById('gradebook-tab')) { $('gradebook-tab').style.display = "none"; }
	if (document.getElementById('profile-tab')) { $('profile-tab').style.display = "none"; }
}
