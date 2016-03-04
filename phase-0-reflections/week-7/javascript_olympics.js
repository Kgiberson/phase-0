 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
// Pseudocode:
// Step 1 - Define an object variable with  athlete name and event as properties.
// Step 2 - Nest object in an array
// Step 3 -  Define a function that takes the array as an argument
// Step 4 - Print string "'Athlete name' won the 'event'"

var sarah = {
  name: "Sarah Hughes",
  event: "Ladies Singles"
};

var michael = {
  name: "Michael Phelps",
  event: "Mens Swimming"
};

var hope = {
  name: "Hope Solo",
  event: "Womens Soccer"
};

 var athletes = [sarah, michael, hope];


function win(array){
  for (var i = 0; i < array.length; i++) {
     array[i].output = console.log(array[i].name + " won the " + array[i].event)
  };
};

win(athletes)


// Jumble your words

var name = "Welcome to the JavaScript Olympics!"
function jumble(string) {
  var output = name.split('').reverse().join('');
  console.log(output)
}
jumble(name)


// 2,4,6,8

var numbers = [1,2,3,4,5,6,7,8,9,10]
function selectEven(array){
  var evensArray = [];
  for (var i = 0; i < array.length; i++){
    if (array[i] % 2 === 0)
      evensArray.push(array[i]);
  };
  console.log(evensArray)
};

selectEven(numbers);


// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};



// Driver Code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
//   How to write a constructor, how to define a function, and how to use placeholders properly.
// What are constructor functions?
//   Constructor functions are used to create a JavaScript object. It is useful if you want to create multiply instances of the object where each instance can be changed during the lifetime of the script.
// How are constructors different from Ruby classes (in your research)?
//   They both can create instances of their objects and work with arguments. However, each has its own syntax in doing so and Ruby allow attributes access rights to change and set where JavaScript does not all it. JavaScript"this" argument referes to its own attributes that can be changed.