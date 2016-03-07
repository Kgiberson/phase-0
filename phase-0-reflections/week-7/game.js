 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Build the greatest empire
// Goals: Get to 10 points. Cities = 2 points, Settlements = 1 point,
// Characters: Player
// Objects: cities, settlements, roads, devcards, robber, raw materials: (wood, ore, wheat, sheep, brick)
// Functions: wood + brick = road, 2 ore 3 wheat = city, brick + sheep + wheat + wood = settlement

// Pseudocode
//Step 1: Create a dice with 6 sides.
//Step 2: Create a resources object that has sheep, wheat, wood, brick and ore as its properties
//Step 3: Create a function that has a random number generator that assigns each side (1-6) of the dice to a resource property, which adds 1 to its value.
//Step 4: Create 3 functions to build a city, settlement and road.
//Step 5: Roll the dice and start building.

// Initial Code

// var dice = [];
// for (var i = 1; i <= 6; i++) {
//     dice.push(i);
// }

// var resources = {
//   sheep: 0,
//   wood: 0,
//   brick: 0,
//   ore: 0,
//   wheat: 0,
// }

// function rollDice(dice){
//   var roll = 0;
//   roll = Math.floor((Math.random()*6)+1);
//   if (roll === 1 ){
//     resources.sheep++;
//   }
//   else if (roll === 2 || roll === 6){
//     resources.wood++;
//   }
//   else if (roll === 3){
//     resources.brick++;
//   }
//   else if (roll === 4){
//     resources.ore++;
//   }
//   else {
//     resources.wheat++;
//   };
//   console.log(resources);
// };

// function buildRoad(resources){
//   if (resources.brick > 0 && resources.wood > 0){
//       resources.brick -= 1;
//       resources.wood -=1;
//       console.log('Road built!');
//   }
//   else {console.log('Not enough resources to build a road.')};
// };

// function buildSettlement(resources){
//   if (resources.brick > 0 && resources.wood > 0 && resources.wheat > 0 && resources.sheep > 0){
//       resources.brick -= 1;
//       resources.wood -= 1;
//       resources.wheat -= 1;
//       resources.sheep -= 1;
//       buildings.settlement++;
//       console.log('Settlement built!');
//     }
//   else {console.log('Not enough resources to build a settlement.')};
// };

// function buildCity(resources){
//   if (resources.wheat >= 2 && resources.ore >= 3){
//       resources.wheat -= 2;
//       resources.ore -= 3;
//       buildings.city++;
//       console.log('City built!');
//   }
//   else {console.log('Not enough resources to build a City')};
// };

// var buildings = {
//   settlement: 0,
//   city: 0,
// };

// function tallyPoints(buildings){
//   var score = buildings.settlement + (buildings.city * 2);
//   console.log(score);
//   return score;
// };

// function playGame(){
//   while (tallyPoints(buildings) < 10){
//     while (resources.sheep < 1 || resources.wood < 1 || resources.brick < 1 || resources.wheat < 1){
//       rollDice(dice)
//     };
//     buildSettlement(resources);
//     while (resources.wheat < 2 || resources.ore < 3){
//       rollDice(dice)
//     };
//     buildCity(resources);
//     tallyPoints(buildings);
//   }
// };

// playGame(resources)


// Refactored Code

var dice = [];
for (var i = 1; i <= 6; i++) {
    dice.push(i);
}

var resources = {
  sheep: 0,
  wood: 0,
  brick: 0,
  ore: 0,
  wheat: 0,
  score: 0,
}

function rollDice(dice){
  var roll = 0;
  roll = Math.floor((Math.random()*6)+1);
  if (roll === 1 ){
    resources.sheep++;
  }
  else if (roll === 2 || roll === 6){
    resources.wood++;
  }
  else if (roll === 3){
    resources.brick++;
  }
  else if (roll === 4){
    resources.ore++;
  }
  else {
    resources.wheat++;
  };
  console.log(resources);
};

function buildRoad(resources){
  if (resources.brick > 0 && resources.wood > 0){
      resources.brick -= 1;
      resources.wood -=1;
      console.log('Road built!');
  }
  else {console.log('Not enough resources to build a road.')};
};

function buildSettlement(resources){
  if (resources.brick > 0 && resources.wood > 0 && resources.wheat > 0 && resources.sheep > 0){
      resources.brick -= 1;
      resources.wood -= 1;
      resources.wheat -= 1;
      resources.sheep -= 1;
      resources.score++;
      console.log('Settlement built!');
    }
  else {console.log('Not enough resources to build a settlement.')};
};

function buildCity(resources){
  if (resources.wheat >= 2 && resources.ore >= 3){
      resources.wheat -= 2;
      resources.ore -= 3;
      resources.score += 2;
      console.log('City built!');
  }
  else {console.log('Not enough resources to build a City')};
};

function playGame(){
  while (resources.score < 10){
    while (resources.sheep < 1 || resources.wood < 1 || resources.brick < 1 || resources.wheat < 1){
      rollDice(dice)
    };
    buildSettlement(resources);
    while (resources.wheat < 2 || resources.ore < 3){
      rollDice(dice)
    };
    buildCity(resources);
  }
  console.log(resources.score);
  console.log('Congratulations, you\'ve won!');
};

playGame(resources)




// Reflection
//What was the most difficult part of this challenge?
  // Figuring out how to put all the pieces together with the playGame function.
// What did you learn about creating objects and functions that interact with one another?
  // I learned that local variables defined in a function can only be called in that function, whereas variables defined outside are considered global and can be used throughout the program.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  // Yes, I learned about Math.floor((math.random()*6)+1). Math.random() selects a number between 0 and 1, when I multiply it by 6 (for the 6 sides) and add 1, it gives me a number in the range of 1-6. Math.floor, rounds the number down to its nearest integer.
// How can you access and manipulate properties of objects?
  //To access and manipulate properties of objects call object.property = modification.
//
//