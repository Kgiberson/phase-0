/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
// var gradebook = new Object();

// gradebook["Joseph"] = {
//   testScores: scores[0],
// };
// gradebook["Susan"] = {
//   testScores: scores[1]
// };
// gradebook["William"] = {
//   testScores: scores[2]
// };
// gradebook["Elizabeth"] = {
//   testScores: scores[3]
// };


// gradebook.addScore = function(name, score) {
//   this[name].testScores.push(score)

// };

// var average = function(intArray) {
//   var total = 0
//   for (var i = 0; i < intArray.length; i++){
//     total += intArray[i];
//   };
//   var avg = (total/intArray.length);
//   return avg;
// };

// gradebook.getAverage = function(name) {
//   var avg = average(this[name].testScores)
//   return avg
// };

// __________________________________________
// Refactored Solution

var gradebook = new Object();

gradebook["Joseph"] = {
  testScores: scores[0],
};
gradebook["Susan"] = {
  testScores: scores[1]
};
gradebook["William"] = {
  testScores: scores[2]
};
gradebook["Elizabeth"] = {
  testScores: scores[3]
};

gradebook.addScore = function(name, score) {
  this[name].testScores.push(score)
};

var average = function(intArray) {
  var avg = (intArray.reduce(function (a,b) {
    return a + b; } ,0))/intArray.length
  return avg;
};

gradebook.getAverage = function(name) {
  var avg = average(this[name].testScores)
  return avg;
};


// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
//   The syntax for it is just the same as adding any key-value pair. The thing called 'this', is the object that "owns" the code, in our case, it's gradebook.
// How did you iterate over nested arrays in JavaScript?
//   We used a for loop that started at var i = 0, ends when i = array.length, and increments by 1.
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//   We used reduce(), which applies a function against an accumulator and each value of the array to reduce it to a single value. In our case, we used it to get the sum of the array.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)