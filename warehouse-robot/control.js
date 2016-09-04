var Robot = require('./robot.js').Robot;
var Grid = require('./grid.js').Grid;

class Control {
  constructor(robot = new Robot, grid = new Grid){
    this.robot = robot;
    this.grid = grid;
  }

  enterInstructions(instructions){
    var instructionsArray = instructions.toUpperCase().split(" ");
    this.moveRobot(instructionsArray);
  }

  moveRobot(instructionsArray){
    for (var i=0; i <instructionsArray.length; i++){
      if (instructionsArray[i] === 'N'){
        this.robot.moveNorth();
      } else if (instructionsArray[i] === 'E') {
        this.robot.moveEast();
      } else if (instructionsArray[i] === 'S') {
        this.robot.moveSouth();
      } else if (instructionsArray[i] === 'W') {
        this.robot.moveWest();
      } else if (instructionsArray[i] === 'G') {
        this.robot.pickUpCrate();
      } else if (instructionsArray[i] === 'D') {
        this.robot.dropCrate();
      }
    }
  }
}

module.exports.Control = Control;
