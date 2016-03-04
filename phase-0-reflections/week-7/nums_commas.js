// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Take 1:
// Step 1 - Create function that accepts integer as an argument
// Step 2 - Convert integer into a string
// Step 3 - Reverse new string
// Step 4 - Take first three characters out of string, put into new string
// Step 5 - Insert comma in new string
// Step 6 - Repeat steps 4 & 5 until initial string is empty
// Step 7 - Reverse new sting and output it

// Take 2:
// Step 1 - Create function that accepts integer as an argument
// Step 2 - Convert integer into a string
// Step 3 - Split the string into an array
// Step 4 - Pop, or remove, each digit from the array into a new array.
// Step 5 - Every 3 elements in the new array join a comma
// Step 6 - Reverse everything in the array
// Step 7 - Join all elements in new array


// Initial Solution
// function separateComma(integer) {
//   var initialString = integer.toString();
//   var array = initialString.split("");
//   var newArray = [];
//   for ( var number = 0 ; array.length > 0 ; number++ ) {
//     if ( number % 4 === 3 && number !== 0 ){
//       newArray.push(",");
//     } else {
//       newArray[number] = array.pop();
//     }
//   };
//   return newArray.reverse().join("");
// };

// console.log(separateComma(7000000000))


// Refactored Solution
function separateComma(integer) {
  var array = integer.toString().split("");
  var outputArray = [];
  for ( var counter = 0 ; array.length > 0 ; counter++ ) {
    if ( counter % 4 === 3 ){
      outputArray.push(",");
    } else {
      outputArray[counter] = array.pop();
    }
  };
  return outputArray.reverse().join("");
};

console.log(separateComma(7000000000))



// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// Reflection
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
What did you learn about iterating over arrays in JavaScript?
What was different about solving this problem in JavaScript?
What built-in methods did you find to incorporate in your refactored solution?