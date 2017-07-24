//--7.3 Solo Challenge: Algorithm Practice--//



//--#0. Pseudocode--//
  //  Send the array of words/phrases into the function.
  //  Define a new variable inside the function that is equal to "a".
  //  Start a loop with a count of 0.
  //  WHILE count < objects in the array - 1, do:
  //    IF array[count].length > newVariable.length, newVariable == array[count]
  //  Unless my brain is broken, which is possible, this should
  //  result in a variable that equals the longest string.

//--Function:
function findTheLongestString(array) {
  var isLongest = "a";
  for (var count = 0; count < array.length - 1; count++) {
    if (array[count].length > isLongest.length) {
      isLongest = array[count];
    }
  }
  return isLongest;
}
  //--Driver Code:
  var states = ["Nevada", "Texas", "Utah", "Alaska", "Rhode Island", "Massachusettes", "North Dakota"];
  var dogs = ["Chow", "Corgi", "Labrador", "Pug", "Golden Retriever", "Belgian Malinois"];
  //-Test Calls
  console.log(findTheLongestString(states));
  console.log(findTheLongestString(dogs));



//--#1. Pseudocode--//
  //  Make a function that takes object1 and object2 as its arguments.
  //  Will need to find a way to figure out how many key-value pairs are
  //  part of an object.
  //  Start a loop at 0, it will run WHILE the count is less than the number
  //  of key-value pairs in an object.
  //  I'm not sure how this is going to work with JavaScript, so my code
  //  could end up very different than this...but I'm thinking that I'll
  //  set a variable to false, and then for each iteration of the loop, if
  //  a key-value pair is found, the variable will be updated to true.
  //  I'm thinking I'll need a nested loop. So, it'll iterate for each pair
  //  inside object2 a total number of object1 times. Each of object1's
  //  key-value pairs will need to be checked for equality while iterating
  //  through object2's pairs.
          //  Should look something like this:
              //isMatch = false
              //for (var x = 0; x < # of pairs in object1; x++)
                //for (var y = 0; y < # of pairs in object2; y++)
                  //if object1[pair #x] = object2[pair #y]
                    //isMatch = true
  // UPDATE, AFTER SOLUTION WAS CODED:
  // I couldn't find syntax to directly compare "pairs", so what I did was
  // generate two arrays that contained ONLY the keys of each object. Then,
  // I used those two arrays to first check for key matches, and if a key
  // match was found, used those arrays to access the value to check for
  // equality.

//--Function:
function keyValuePairChecker(object1, object2) {
  isMatch = false
  keys1 = Object.keys(object1)
  keys2 = Object.keys(object2)
  for (var x = 0; x < keys1.length; x++) {
    for (var y = 0; y < keys2.length; y++) {
      if (keys1[x] == keys2[y]) {
        if (object1[keys1[x]] == object2[keys2[y]]) {
          isMatch = true;
        }
      }
    }
  }
  return isMatch
}
  //--Driver Code:
  var dog = {name: "Henry", age: 7, color: "Brown", legs: 4};
  var monkey = {name: "Josephine", age: 3, color: "Brown", legs: 2, tail: true};
  var spider = {name: "Pauline", age: 14, color: "Green", legs: 8};
  //--Test Calls:
  console.log(keyValuePairChecker(dog, monkey)); //-should return true
  console.log(keyValuePairChecker(dog, spider)); //-should return false



//--#2. Pseudocode--//
  // Create a function that takes an integer as an argument.
  // Create a variable that houses the alphabet.
  // Create an empty array to house the random strings.
  // Set a loop to run as many times as the integer argument.
  // Figure out what the "random" syntax is for JavaScript:
    // Looking for something like Ruby's <rand(10)> method.
  // For each iteration of the loop, set a random length for
  // a string, and populate it with random letters from alphabet variable.
  // Then, add the new string to the empty array, like "fakeWords[x] = newWord",
  // or whatever variables you use. (The "x" in "fakeWords[x]" will need to be
  // whatever "counter" variable you use for the outermost loop.)

//--Function:
function makeFakeWords(integer) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz"; //26 letters, derp
  var fakeWords = [];
  for (var x = 0; x < integer; x++) {
    var howManyChars = Math.floor((Math.random() * 10) + 1); //-The "+1" makes it
    var word = "";                                           //-generate 1 through 10,
    for (var y = 0; y < howManyChars; y++) {                 //-rather than 0 through 9.
      word += alphabet[Math.floor((Math.random() * 26))];
    }
    fakeWords[x] = word;
  }
  return fakeWords;
}

//--Driver Code:
for (var x = 0; x < 10; x++) {
  var array = makeFakeWords(5);
  console.log("An array of randomness:")
  console.log(array);
  console.log("The longest word in this array is:")
  console.log(findTheLongestString(array));
  console.log(" ")
}