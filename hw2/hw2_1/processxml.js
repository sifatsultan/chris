/*

	Adapted for CSP2103-4102 Sem 1, 2012 by Christopher Lowe, Bachelor of Computer Science student
		reworked from original by Adam Same (2008) and Dr Justin Brown (2009)

	Author: Christopher Lowe
	Date: 25/5/2012

   Notes
		- Works on IE9 and Firefox (64bit Windows 7)
		- Does not work in chrome by default because it lacks an XML parser.
			(see http://techie-buzz.com/internet-tools/google-chrome-xml-support.html)
		
*/



/*
	Change these for new project - the values below set all the other values for both IE and non IE browsers
*/

function transform(message) {
	transformXML("assignment_2.xml", "StudentResults.xslt", "main_body", "sid", message)
}



/*
	Parameters:
			pXML 			- The XML file
			pStylesheet		- The XSLT stylesheet to load
			pDestDiv		- The ID of the DIV that will be replaced by the new stylesheet
			pParameter		- The name of the parameter defined in the new stylesheet
			pMessage		- The value of the parameter that is passed in

*/
function transformXML(pXML, pStylesheet, pDestDiv, pParameter, pMessage) {

	try {
		// For Firefox
    	var xslStylesheet;
        var xsltProcessor = new XSLTProcessor();  // IE will throw an exception here
        var myDOM;
        var xmlDoc;
		
		// load the new stylesheet
        var myXMLHTTPRequest = new XMLHttpRequest();    
        myXMLHTTPRequest.open("GET", pStylesheet, false);
        myXMLHTTPRequest.send(null);
        xslStylesheet = myXMLHTTPRequest.responseXML;
        xsltProcessor.importStylesheet(xslStylesheet);
                      
        // load the xml file
		myXMLHTTPRequest = new XMLHttpRequest();
		myXMLHTTPRequest.open("GET", pXML, false);
		myXMLHTTPRequest.send(null);
		xmlDoc = myXMLHTTPRequest.responseXML;
						
		// set the parameter
		xsltProcessor.setParameter(null, pParameter, pMessage);
		var fragment = xsltProcessor.transformToFragment(xmlDoc,document);
		
		// replace the div contents with the new stylesheet
		document.getElementById(pDestDiv).innerHTML = "";
		myDOM = fragment;
		document.getElementById(pDestDiv).appendChild(fragment);

		// scroll to the top of the page
		scroll(0, 0);

	} catch (e) {
	
		// For internet explorer
		var xslt = new ActiveXObject("Msxml2.XSLTemplate.3.0");
		var xsldoc = new ActiveXObject("Msxml2.FreeThreadedDOMDocument.3.0");
		var xslproc;
		
		// load the stylesheet
		xsldoc.async = false;
		xsldoc.load(pStylesheet);
		xslt.stylesheet = xsldoc;
		var xmldoc = new ActiveXObject("Msxml2.DOMDocument.3.0");
		xmldoc.async = false;
		
		// load the xml
		xmldoc.load(pXML);

		try {
			xslproc = xslt.createProcessor();
			xslproc.input = xmldoc;
			
			// add the parameter
			xslproc.addParameter(pParameter, pMessage);
			xslproc.transform();
			
			// replace the div contents with the new stylesheet
			document.getElementById(pDestDiv).innerHTML = '';
			document.getElementById(pDestDiv).innerHTML = xslproc.output;
			
			// scroll to the top of the page
			scroll(0, 0);
			
		} catch (ex) {
			// Occurs if parameters are incorrect
			alert(ex.message);   
			
		}
	}
}

