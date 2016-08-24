$(document).ready(function(){
	console.log("ready");
	var capturedValue = "";
	
	/*function searchitem(){
		  alert("hello");
	var searchitem = $('.searchterm').val();
	if(searchitem == "" || searchitem == 'undefined'){
	responsiveVoice.speak("Please speak out loud your search item");
	console.log("blank text");
	}else{	  
	responsiveVoice.speak("Your search item is "+ searchitem);
	console.log("text**"+ searchitem);
	}
	};
	
	 window.setTimeout( searchitem, 5000 );
	 */
	 
	 responsiveVoice.OnVoiceReady = function() {
	    if(responsiveVoice.voiceSupport()) {
	    	responsiveVoice.setDefaultVoice("US English Female");
	    	
	    	var welcomeText = "Welcome to Voisense!!";
	    	responsiveVoice.speak(welcomeText);
	    	responsiveVoice.speak("to search for a product speak out your product name within 10 seconds\"");
	    	startMicrophone();
	    	window.setTimeout( startMicrophone, 15000 );
	    	window.setTimeout( captureValue, 15000 );
	    	
	    }
	    
	    
	 }
	 
	
	
	}); 

function startMicrophone(){
	 $('#start_button').click();
}

function captureValue(){
	var spokentext = captureSpokenValue();
	var timeout = "";
	alert(spokentext);
	if(spokentext == "Yes"){
		if(capturedValue != "undefined" && capturedValue != "" && capturedValue != null){
		alert(capturedValue);
		responsiveVoice.speak("We are proceeding with "+ capturedValue);
		}
	}else if(spokentext != null && spokentext != "" && (spokentext != "No")){
	responsiveVoice.speak("selected product is "+ spokentext);
	responsiveVoice.speak("please confirm if you wish to proceed with recognized product");
	responsiveVoice.speak("For continuation please say yes else say no");
	capturedValue = spokentext;
	timeout = 15000;
	}else if(spokentext == "No"){
		responsiveVoice.speak("Sorry for wrongly detecting your product, you can search your product after this message");
		timeout = 15000;
	}else{
		responsiveVoice.speak("No product was detected, please search again");
		timeout = 10000;
	}
	if(spokentext != "Yes"){
	startMicrophone();
	window.setTimeout( startMicrophone, timeout );
	window.setTimeout( captureValue, timeout + 2000 );
	}
}

function captureSpokenValue(){
	var spokentext = "";
	spokentext = $('#final_span').text();
	return spokentext;
}



	