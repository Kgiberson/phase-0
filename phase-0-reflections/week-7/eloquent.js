// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var x = 45
console.log(x + 5)

// var favFood = prompt("What's your favorite food?, "");
// alert("Hey! That\'s my favorite food too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var triangle = '#'; triangle.length < 8;  triangle += '#') console.log(triangle);

for (var counter = 1; counter <= 100; counter += 1) {
  var word = "";
  if (counter % 3 == 0)
    word += 'Fizz'
  if (counter % 5 == 0)
    word += 'Buzz';
  console.log(word || counter);
}


for (var counter = 0; counter < 8; counter++) {
  var row = ' # # # #'
  var row2 = '# # # # '
  if (counter % 2 == 0)
    console.log(row);
  else
    console.log(row2);
}



// Functions

// Complete the `minimum` exercise.

function min(arg1, arg2) {
  if (arg1 < arg2)
    return arg1;
  else
    return arg2;
};

// console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = [
  {name: ["Kari"]},
  {age: [25]},
  {favorite_foods: ["pizza", "avocado", "chocolate"]},
  {quirk: "can burp on command"}
];
