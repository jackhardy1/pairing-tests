var Grid = require('./grid.js').Grid

class Robot {
  constructor(grid = new Grid, x_axis, y_axis){
    this.grid = grid;
  }

  moveNorth(){
    this.grid.y_axis += 1
  }

  moveEast(){
    this.grid.x_axis += 1
  }

  moveSouth(){
    this.grid.y_axis -= 1
  }

  moveWest(){
    this.grid.x_axis -= 1
  }

}





module.exports.Robot = Robot;
