var recognition, selectedProduct;

$(document)
		.ready(
				function() {
					console.log("ready");
					var capturedValue = "";

					
					initRecognition();
					responsiveVoice.OnVoiceReady = function() {
						if (responsiveVoice.voiceSupport()) {
							responsiveVoice
									.setDefaultVoice("US English Female");

							var welcomeText = "Welcome to Voisense!!";
							//responsiveVoice.speak(welcomeText);
							responsiveVoice
									.speak(welcomeText + "to search for a product speak out your product name ");
							
							startRecognizing(speakOutProduct);
							//startMic();stopMic
							//startMicrophone();
							//window.setTimeout( startMicrophone, 15000 );
							//window.setTimeout( captureValue, 15000 );

						}

					}

				});

function startMicrophone() {
	console.log('startMicrophone');
	$('#start_button').click();
}

function captureValue() {
	var spokentext = captureSpokenValue();
	var timeout = "";
	console.log('spokentext: ' + spokentext);
	if (spokentext == "Yes") {
		if (capturedValue != "undefined" && capturedValue != ""
				&& capturedValue != null) {
			alert(capturedValue);
			responsiveVoice.speak("We are proceeding with " + capturedValue);
		}
	} else if (spokentext != null && spokentext != "" && (spokentext != "No")) {
		responsiveVoice.speak("selected product is " + spokentext);
		responsiveVoice
				.speak("please confirm if you wish to proceed with recognized product");
		responsiveVoice.speak("For continuation please say yes else say no");
		capturedValue = spokentext;
		timeout = 15000;
	} else if (spokentext == "No") {
		responsiveVoice
				.speak("Sorry for wrongly detecting your product, you can search your product after this message");
		timeout = 15000;
	} else {
		responsiveVoice.speak("No product was detected, please search again");
		timeout = 10000;
	}
	if (spokentext != "Yes") {
		startMicrophone();
		window.setTimeout(startMicrophone, timeout);
		window.setTimeout(captureValue, timeout + 5000);
	}
}

function captureSpokenValue() {
	var spokentext = "";
	spokentext = $('#final_span').text();
	return spokentext;
}

/*function submitForm() {
	var searchTerm = $('#final_span').text();

	

	var input1 = document.createElement('input');
	input1.setAttribute('type', 'text');
	input1.setAttribute('name', 'searchWord');
	input1.setAttribute('id', 'search');


	div.appendChild(form);
}
*/
function speakOutProduct(spokentext) {
	//responsiveVoice.speak("selected product is " + spokentext);
	selectedProduct = spokentext;
	responsiveVoice
	.speak("please confirm if you wish to proceed with " + selectedProduct);
	responsiveVoice.speak("For continuation please say yes else say no");
	
	startRecognizing(detectYOrN);
	
}

function detectYOrN(spokentext) {
	
	if(spokentext && typeof spokentext!="undefined" && spokentext.trim().toLowerCase() === "yes") {
		responsiveVoice
		.speak("Thanks for your input! Please wait while we are searching for " + selectedProduct);
			$('#search_box').val(selectedProduct);
		
	} else {
		responsiveVoice
		.speak("Please search again");
	}
}

function searchitem(){
	
	//var form = document.createElement('form');
	//form.setAttribute('action', 'xg');
	//form.setAttribute('method', 'POST');
	//form.appendChild($("input[id='searchterm']"));
	$('#search-form').submit();
}

function startRecognizing(successCallback, endCallback) {
	
	initRecognition(successCallback, endCallback);
	recognition.start();
	console.log("mic on");
}

function stopMic() {
	console.log("mic off");
	recognition.stop();

}

function speechTest() {

	startRecognition(function(results) {
		console.log("end callback ");
		console.log(results);
	}, function(results) {
		console.log("success result ");
		console.log(results);
	})

	if (typeof recognizing != "undefined") {
		console.log("mic off");
		recognition.stop();
		return;
	}
	console.log("mic on");

	recognition.lang = select_dialect.value;
	recognition.start();
	ignore_onend = false;
	final_span.innerHTML = '';
	interim_span.innerHTML = '';
	// start_img.src = 'mic-slash.gif';
	//showInfo('info_allow');
	//showButtons('none');
	// start_timestamp = event.timeStamp;

};

function initRecognition(onResultCallback, onEndCallback) {

	if (!('webkitSpeechRecognition' in window)) {
		upgrade();
	} else {
		//start_button.style.display = 'inline-block';
		recognition = new webkitSpeechRecognition();
		recognition.continuous = true;
		recognition.interimResults = true;
		recognition.onstart = function() {
			recognizing = true;
			//showInfo('info_speak_now');
			//start_img.src = 'mic-animate.gif';
		};
		recognition.onerror = function(event) {
			if (event.error == 'no-speech') {
				// start_img.src = 'mic.gif';
				//showInfo('info_no_speech');
				ignore_onend = true;
			}
			if (event.error == 'audio-capture') {
				//start_img.src = 'mic.gif';
				// showInfo('info_no_microphone');
				ignore_onend = true;
			}
			if (event.error == 'not-allowed') {
				if (event.timeStamp - start_timestamp < 1000) {
					//showInfo('info_blocked');
				} else {
					//showInfo('info_denied');
				}
				ignore_onend = true;
			}
		};
		recognition.onend = function() {
			recognizing = false;
			/*if (ignore_onend) {
				return;
			}*/
			// start_img.src = 'mic.gif';
			/*if (!final_transcript) {
				//showInfo('info_start');
				return;
			}*/
			/*showInfo('');
			if (window.getSelection) {
				window.getSelection().removeAllRanges();
				var range = document.createRange();
				range.selectNode(document.getElementById('final_span'));
				window.getSelection().addRange(range);
			}*/

			if (onEndCallback) {
				onEndCallback();
			}
			/* if (create_email) {
			   create_email = false;
			   createEmail();
			 }*/
		};
		recognition.onresult = function(event) {
			
			//console.log("result recieved");
			//console.log(event);

			var final_transcript = "", interim_transcript = '';
			for (var i = event.resultIndex; i < event.results.length; ++i) {
				if (event.results[i].isFinal) {
					final_transcript += event.results[i][0].transcript;
				} else {
					interim_transcript += event.results[i][0].transcript;
				}
			}
			
			if (final_transcript !== "") {
				console.log("final_transcript: "+final_transcript);
				onResultCallback(final_transcript);
				//stopMic();
			}

			//final_transcript = capitalize(final_transcript);
			//final_span.innerHTML = linebreak(final_transcript);
			//interim_span.innerHTML = linebreak(interim_transcript);
			/*if (final_transcript ) {
			  showButtons('inline-block');
			}*/
		};
		/* recognition.onend = function(event) {
		  onEndCallback(event);
		 };
		 recognition.onresult = function(event) {
		  onResultCallback(event);
		 }*/

	}
}
