function answer(obj, quiz_id, question_id, choice_id) {
	var url = "/student/choose/" + quiz_id;
	var params = "question_id=" + question_id + "&choice_id=" + choice_id;

	$('done').setAttribute("saved_href", $('done').href);

	new Ajax.Request(
		url,
		{
			method: 'get',
			parameters: params,
			onSuccess: function(xhr) { $A(obj.parentNode.childNodes).each( function(o) { o.className = ""; } ); obj.className = "chosen"; },
			onFailure: function(xhr) { alert(xhr.responseText); },
			onComplete: function(xhr) { $('done').href = $('done').getAttribute("saved_href"); }
		}
	);
}

function answerShowHide(obj) {
	var questionId = obj.getAttribute("questionId");
	var answer = obj.parentNode.getElementsByClassName("answer")[0];
	var analysis = obj.parentNode.getElementsByClassName("analysis")[0];

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
	document.getElementsByClassName("accessible").each( function(obj) { obj.style.display = "none"; } );
	document.getElementsByClassName("unaccessible").each( function(obj) { obj.style.display = "block"; } );
	if (document.getElementById('tabNavigation')) { $('tabNavigation').style.display = "block"; }

	if (document.getElementById('documents-tab')) { $('documents-tab').style.display = "none"; }
	if (document.getElementById('openQuizzes-tab')) { $('openQuizzes-tab').style.display = "none"; }
	if (document.getElementById('closedQuizzes-tab')) { $('closedQuizzes-tab').style.display = "none"; }
	if (document.getElementById('gradebook-tab')) { $('gradebook-tab').style.display = "none"; }
}
