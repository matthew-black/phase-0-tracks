
var lightCells = document.getElementsByClassName("light");
var darkCells = document.getElementsByClassName("dark");


function showLight() {
  lightCells[0].style.backgroundColor = "#37A3FF";
}

function showDark() {
  darkCells[0].style.backgroundColor = "#064479";
}

lightCells[0].addEventListener("click", showLight);


darkCells[0].addEventListener("click", showDark)


// lightCells[0].style.backgroundColor = "#37A3FF";
// darkCells[0].style.backgroundColor = "#064479";