var Grid = require('./grid.js').Grid

class Robot {
  constructor(grid = new Grid){
    this.grid = grid;
  }

  moveNorth(){
    if (!(this.grid.current_y_position + 1 > this.grid.y_limit)) {
      this.grid.current_y_position += 1
    }
  }

  moveEast(){
    if(!(this.grid.current_x_position + 1 > this.grid.x_limit)) {
      this.grid.current_x_position += 1;
    }
  }

  moveSouth(){
    if(!(this.grid.current_y_position - 1 < 0)) {
      this.grid.current_y_position -= 1;
    }
  }

  moveWest(){
    if (!(this.grid.current_x_position - 1 < 0)) {
    this.grid.current_x_position -= 1;
    }
  }
}


module.exports.Robot = Robot;
