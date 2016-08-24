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
	    	$('#start_button').click();
	    }
	    
	    
	 }
	
	}); 



	