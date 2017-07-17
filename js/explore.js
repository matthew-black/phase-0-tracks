// For a provided string:
// string.length - 1 will equal the indexed value
// of the final character in the string

// I just need to find a Javascript function that
// works like Ruby's "print" instead of Ruby's "puts".
// "console.log" seems to function like "puts".

// Once I've found that function, it'll just be like making
// the loop that counted backward from 10 to 1.

// So, set a variable to string.length - 1, which will make
// the first iteration of the loop start with the final
// letter of the provided string.

// Make the loop logic be while this variable is greater
// than or equal to 0, decrease the variable by 1 ("x--").

// With each iteration of the loop, print the character
// that is returned, without starting a new line.

// The good folks at Stack Overflow say that
// process.stdout.write() will function like Ruby's
// "print" function.

// function reverseString(string) {
//   for (x = string.length -1; x >=0; x--) {
//     process.stdout.write(string[x])
//   }
// }

// reverseString("matthew")

// Yay! That was surprisingly simple! But...reading the
// instructions more closely...I shouldn't be immediately printing.
// The reversed string needs to be stored as a variable.
// Without doc-diving, here's an attempt at using my brains.

// function reverseStringStore(string) {
//   var newString = ""
//   for (x = string.length - 1; x >=0; x --) {
//     newString[x] = string[x]
//     }
//   return newString
// }
  // Attempt at using brains !successful...

// Found this handy += thing. Seems to function like Ruby's
// shovel operator, but with strings!

function reverseStringStore(string) {
  var newString = ""
  for (x = string.length - 1; x >=0; x --) {
    newString += string[x]  // += is pretty neat!
  }
  return newString  // wouldn't need in Ruby, but no implicit
}                   // return in JavaScript

var javaScriptMastered = false;
if (javaScriptMastered == false) {
  console.log(reverseStringStore("matthew"))
  }
  else {
    console.log("When did you master JavaScript!?")
  }