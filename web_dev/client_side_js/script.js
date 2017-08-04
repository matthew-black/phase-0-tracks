// This script makes it possible to "light up" each
// cell of an empty table with a new background color
// when a single table cell is clicked.


// Based on which CSS class has been assigned, groups all
// table cells into two variables:
var lightCells = document.getElementsByClassName("light");
var darkCells = document.getElementsByClassName("dark");
var allCells = document.getElementsByTagName("td");


// Creates functions that will change the background color
// of table cells:
function showLight(event) {
  event.target.style.backgroundColor = "#37A3FF";
}

function showDark(event) {
  event.target.style.backgroundColor = "#064479";
}


// Creates event listeners that will call the relevant function
// when a specific table cell is clicked:
for (var i = 0; i < lightCells.length; i++) {
  lightCells[i].addEventListener("click", showLight);
}

for (var i = 0; i < darkCells.length; i++) {
  darkCells[i].addEventListener("click", showDark);
}


// A function that evaluates to false when each table
// cell has been clicked:
function notDone() {
  for (var i = 0; i < allCells.length; i++) {
    if (allCells[i].style.backgroundColor == "") {
      var notAllClicked = true;
      break;
    }
    else {
      notAllClicked = false;
    }
  }
  return notAllClicked;
}