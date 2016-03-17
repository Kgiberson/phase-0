// DOM Manipulation Challenge


// I worked on this challenge with .


// Add your JavaScript calls to this page:

// Release 0:


// window.onload = function(){
// Release 1:
var release0 = document.getElementById("release-0"); release0.setAttribute("class","done");



// Release 2:
var release1 = document.getElementById("release-1").style.display = "none";



// Release 3:

var release2 = document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2!";


// Release 4:

var release3 = document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 5:

var release4 = document.getElementsByClassName("release-4")[0,1].style.fontSize = "2em";

// Release 6:
var template = document.getElementById("hidden");
document.body.appendChild(template.content.cloneNode(true));
// }

// Reflect:
// What did you learn about the DOM?
  // I learned that when an HTML document is loaded into a web browser, it becomes a document object, and is the root node of the HTML document. The document object provides properties and methods to access all node objects from within JavaScript. the DOM is a programming interface for HTML and XML documents. The DOM provides a representation of the document as a structured group of nodes and objects that have properties and methods. It connects web pages to scripts or programming languages.
// What are some useful methods to use to manipulate the DOM?
  // getElementById and getElementsByTagName were useful for selecting the right elements, and I'm excited to play around with the methods associated with the template element.