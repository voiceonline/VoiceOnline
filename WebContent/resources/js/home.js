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