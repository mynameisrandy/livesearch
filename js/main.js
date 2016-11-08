(function() {

	console.log('seaf');	

	// VARIABLES
	var getSearchRequest;
	
	// Allow us to reach our html file and created a shortcut
	var getSearchField = document.querySelector("#searchbox");	

	// It contains a paramater this.value - (str) | refers to the form input and 
	// value refers to what has benn entered by the user
	// passed (str) holds the value of the form that is passed along from the function call
	function showResults(str) {
		// Call on the create request function to create the XHR Object
		getSearchRequest = createRequest();
		// To check to if the value is null, if so we exit the function
		// using they keyword return
		if(getSearchRequest === null) {
			alert("Please upgrade to a modern Broswer!");
			return;
		}

		// Creating the Subway Car
		// set it to the php file
		var url = "searchPokemons.php?searchstring="+str;
		// When a request to a server is sent
		getSearchRequest.onreadystatechange = searchStats;
		// Opening up the tunnel | to send a request to a server to open and send XMLHttpRequest object
		getSearchRequest.open("GET", url , true);
		// Sending
		getSearchRequest.send(null);
	}

	// Setup and schedule
	function searchStats() {
		if(getSearchRequest.readyState===4 || getSearchRequest.readyState==="complete") {
			// Accessing to the DOM, server responds 
			document.querySelector("#resultList").innerHTML = getSearchRequest.responseText;
		}
	}


	// Listener

	// "keyup" event sent to an element when the user releases a key on the keyboard.
	getSearchField.addEventListener("keyup", function() { 
		// stored this.value = str and passes the result
		showResults(this.value);
	}, false);



})();		

// Its creates a closures from the anonymous function 

// Second AJAX Call

function displayInfo(id) {
	var displayRequest; // Created a Global Variable

	function displayMovie(id) {
		displayRequest = createRequest(); // Creating our Subway Cars
		if(displayRequest === null) {
			alert("Please update to a newer Broswer");
			return;
		}

		var url = "displayPokemon.php?custid="+id; // create url
		displayRequest.onreadystatechange = displayStatus; // define display status | gets send into php file
		displayRequest.open("GET", url, true); // Getting the url and opening
		displayRequest.send(null); // passing the id
	}	


	function displayStatus() {
		if (displayRequest.readyState===4 || displayRequest.readyState==="complete") {
			document.querySelector("#showResult").innerHTML= displayRequest.responseText;
		}
	}

	displayMovie(id); // Call the function

}