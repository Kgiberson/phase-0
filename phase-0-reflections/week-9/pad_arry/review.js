// # Pad an Array

// # I worked on this challenge by myself.

// # I spent [] hours on this challenge.



// # 0. Pseudocode

// # What is the input? An array, a positive integer, and an optional padding value.
// # What is the output? (i.e. What should the code return?) a changed array & an unchanged array
// # What are the steps needed to solve the problem?
// Step 1 - Define 2 functions, one destructive, one nondestructive. Each accepts an array, a minimum size, and an optional padded object.
// Step 2 - IF array's length is LESS THAN the minimum size, create a for loop to add to the end of the array until the minimum length is met.
// Step 3 - the function should return a new array padded with the pad value up to the minimum size.


// # 1. Initial Solution
// var array = [1,2,3];
// var min_size = 5;
// function padBang(array, min_size, value) {
//   var value = value || 'Null'
//   if (array.length < min_size) {
//     var x = min_size - array.length;
//     for (x; x !== 0; x--) {
//       array.push(value);
//     };
//   };
//   console.log(array);
// };

// padBang(array, min_size, "bang")

// // Non-destructive
// function pad(array, min_size, value) {
//   var value = value || "Null"
//   var newArr = [];
//   for (var i = 0; i < array.length; i++) {
//     newArr[i] = array[i]
//    }
//   if (array.length < min_size) {
//     var x = min_size - array.length;
//     for (x; x !== 0; x-- ) {
//      newArr.push(value);
//    };
//     console.log(newArr);
//   };
//   console.log(array);
// };

// pad(array, min_size, 'pad');

// # 3. Refactored Solution

// Destructive
var array = [1,2,3];
var min_size = 5;
function padBang(array, min_size, value) {
 var value = value || 'Null'
  if (array.length < min_size) {
    var x = min_size - array.length;
    for (x; x !== 0; x--) {
      array.push(value);
    };
  };
  console.log(array);
};


// Non-destructive
function pad(array, min_size, value) {
  var value = value || "Null"
  var newArr = [];
  for (var i = 0; i < array.length; i++) {
    newArr[i] = array[i]
   }
  if (array.length < min_size) {
    var x = min_size - array.length;
    for (x; x !== 0; x-- ) {
     newArr.push(value);
   };
    console.log(newArr);
  };
  console.log(array);
};

pad(array, min_size, 'pad');
padBang(array, min_size, "bang")

// # 4. Reflection
What concepts did you solidify in working on this challenge?
  I solidified my understanding of for loops in JS.
What was the most difficult part of this challenge?
  Figuring out how to set a default value in JS. On StackOverflow I found that JS should allow defaults to be set within the parameter section, eg. value = 'null', but for some reason I was getting a token error.
Did you solve the problem in a new way this time?
  Yes, in Ruby I was able to use the .times method to add the pad value. In JS I used a for loop to push the value to the end of the array.
Was your pseudocode different from the Ruby version? What was the same and what was different?
  Only slightly. Since the general steps were the same, the only thing that changed was the methods I used to add the pad value to the end of the array.
