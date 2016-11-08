// JavaScript Document

//utility function to create AJAX request/XHR object

function createRequest() {
	var request;
	
	try {
		request = new XMLHttpRequest(); //modern browser to request object
	  } catch(e) {
		try {
		 request = new ActiveXObject("Msxml2.XMLHTTP"); // try ms way
		} catch(e) {
			try {
		 		request = new ActiveXObject("Microsoft.XMLHTTP"); // try ms way
			} 	catch(e) {
			request = null; // nope not working set request object to null
		}
	}
}
	return request;
}
