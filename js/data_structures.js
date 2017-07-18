// Java and Horses!

var horses = ["Ed", "Mike", "Scottina", "Erin"];
var colors = ["blue", "red", "green", "yellow"];

horses.push("Roberto");
colors.push("pink");

var horseTeam = {};
for (var x = 0; x < horses.length; x++){
  horseTeam[horses[x]] = colors[x];
}

console.log(horseTeam)

function Car(color, year, make, model) {
  this.color = color;
  this.year = year;
  this.make = make;
  this.model = model;

  this.honk = function() { console.log("Beepity, beep. BeeEEEEP!"); };
}

var car1 = new Car("Black", "2007", "Honda", "Civic");

console.log(car1);
car1.honk();

for (var key in horseTeam){
  if (horseTeam.hasOwnProperty(key)) {
    console.log(horseTeam[key]);
  }
}

for (var [key, value] of Object.entries(horseTeam)) {
  console.log(key + " is " + value + "!");
  }