$(document).ready(function(){
	console.log("ready");
	
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
	    	responsiveVoice.speak("to search for a product say \"search... product name\"");
	    	startMicrophone();
	    	window.setTimeout( startMicrophone, 7000 );
	    	window.setTimeout( captureValue, 7000 );
	    	
	    }
	    
	    
	 }
	 
	
	
	}); 

function startMicrophone(){
	 $('#start_button').click();
}

function captureValue(){
	var spokentext = $('#final_span').text();
	var timeout = "";
	alert(spokentext);
	if(spokentext != null && spokentext != ""){
	responsiveVoice.speak("selected product is "+ spokentext);
	responsiveVoice.speak("please confirm if you wish to proceed with recognized product");
	responsiveVoice.speak("For continuation please say yes else say no");
	timeout = 3000;
	}else{
		responsiveVoice.speak("No product was detected, please search again");
		timeout = 7000;
	}
	startMicrophone();
	window.setTimeout( startMicrophone, timeout );
}



	