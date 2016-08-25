/**
 * 
 */

$(document)
		.ready(
				function() {
					console.log("ready");
					var capturedValue = "";

					responsiveVoice.OnVoiceReady = function() {
						if (responsiveVoice.voiceSupport()) {
							responsiveVoice
									.setDefaultVoice("US English Female");

							var welcomeText = "Welcome to Voisense!!";
							responsiveVoice
									.speak(welcomeText
											+ "to search for a product speak out your product name ");

							startRecognizing(speakOutProduct);

						}

					}

				});



function speakOutProduct(spokentext) {
	// responsiveVoice.speak("selected product is " + spokentext);
	selectedProduct = spokentext;
	$('#search_box').val(selectedProduct);
	/*responsiveVoice.speak("please confirm if you wish to proceed with  "
			+ selectedProduct);*/
	responsiveVoice.speak("Search product is " + selectedProduct + " for continuation please say YES else NO");
	startRecognizing(detectYOrN);

}

function detectYOrN(spokentext) {

	if (spokentext && typeof spokentext != "undefined"
			&& spokentext.trim().toLowerCase() === "yes") {
		responsiveVoice.speak("Please wait while we are searching for "
				+ selectedProduct);
		searchitem();

	} else {
		$('#search_box').val("");
		responsiveVoice.speak("Please search again");
		startRecognizing(speakOutProduct);
	}
}