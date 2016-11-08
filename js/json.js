// JavaScript Document

(function() {

	// AJAX Default
	// A Empty Variable
	var request;
	// SHORTCUT TO THE DOM and GET THE ELEMENT
	var form = document.querySelector("#selectGame");


	// AJAX Default
	// It contains a paramater this.value - (str) | refers to the form input and 
	// value refers to what has benn entered by the user
	// passed (str) holds the value of the form that is passed along from the function call
	function showGameJSON(str) {
		// Create the XHR Object 
		request = createRequest();
		// To check if the browser is old, if true then it won't work. PLEASE USE MODERN BROWSER!
		if(request===null) {
			alert("Old Browser: Please Update");
			return;
		}

		// CREATING THE SUBWAY CAR 
		// Created an url to for the php file and get the string/id
		var url = "getgame_json.php?q="+str;
		// Contains the event handler | When a request to a server is sent
		request.onreadystatechange = stateChangedJSON;
		// console.log('showUserJson');
		// Opening up the tunnel | to send a request to a server to open and send XMLHttpRequest object
		request.open("GET", url, true);
		// SEND THE INFORMATION
		request.send(null);
	}

	// Setup and schedule
	function stateChangedJSON() {
		// AJAX Default
		if(request.readyState===4 || request.readyState === "complete") {
			// Return as a String 'JSON.parse()' | parse the information
			var jsondoc = JSON.parse(request.responseText);
			// console.log(jsondoc);
			// Find Id of name and use innerHTML to dump the information
			// Accessing to the DOM, server responds 
			document.getElementById("name").innerHTML = jsondoc.gymName;
			document.getElementById("hometown").innerHTML = jsondoc.hometown; 
			document.getElementById("gymName").innerHTML = jsondoc.gymName1; 
			document.getElementById("badgeIMG").innerHTML = "<img src='img/"+jsondoc.badgeIMG+"'>"; 
			document.getElementById("badgeName").innerHTML = jsondoc.badgeName; 
			document.getElementById("gender").innerHTML = jsondoc.gender; 
			document.getElementById("image").innerHTML = "<img src='img/"+jsondoc.gymleaderIMG+"'>"; 
		}
	}
	
	// EVENT LISTENER

	// ON CHANGE 
	form.addEventListener('change', function(){
		// stored this.value = str and passes the result
		showGameJSON(this.value);
	}, false);

}());


