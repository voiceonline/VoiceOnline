var recognition, selectedProduct, cartValue = [""];

if (responsiveVoice.voiceSupport()) {
	responsiveVoice.setDefaultVoice("US English Female");
}

function voiceOnlineSpeak(toSpeak) {
	responsiveVoice.speak(toSpeak);
}
displayOnloadCount();
function searchitem() {

	var searchItem = $('#search_box').val();
	if (searchItem && searchItem.trim() !== "") {
		$('#search-form').submit();
	}

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

function upgrade() {
	alert("Your browser does not support SpeechRecognition API. Please Upgrade!!");
}

function initRecognition(onResultCallback, onEndCallback) {

	if (!('webkitSpeechRecognition' in window)) {
		upgrade();
	} else {
		//start_button.style.display = 'inline-block';
		recognition = new webkitSpeechRecognition();
		recognition.continuous = true;
		recognition.interimResults = true;
		recognition.onstart = function() {
			console.log("Recognition started");
			//recognizing = true;
			//showInfo('info_speak_now');
			$('#mic_status').attr('src', 'resources/images/mic-animate.gif');
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
			
			console.log("Recognition ended");
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
			console.log("Recognition result recieved");
			var final_transcript = "", interim_transcript = '';
			for (var i = event.resultIndex; i < event.results.length; ++i) {
				if (event.results[i].isFinal) {
					final_transcript += event.results[i][0].transcript;
				} else {
					interim_transcript += event.results[i][0].transcript;
				}
			}

			if (final_transcript !== "") {
				console.log("reconized word: " + final_transcript);
				onResultCallback(final_transcript);
				//stopMic();
			}

		};

	}
}
function displayOnloadCount(){
	var cartCount = localStorage.getItem('productCount');
	if(cartCount != null && typeof cartCount != "undefined" && cartCount != ""){
	$('.BasketH').text("(" + cartCount + ")");
	}
}