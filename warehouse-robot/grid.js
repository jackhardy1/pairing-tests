class Grid {
  constructor(x_limit,y_limit,current_x_position,current_y_position){
    this.x_limit = x_limit || 10;
    this.y_limit = y_limit || 10;
    this.current_x_position = current_x_position || 5;
    this.current_y_position = current_y_position || 5;
    this.crate_positions = []
  }

  addCrate(coordinates){
    this.crate_positions.push(coordinates);
  }
}


module.exports.Grid = Grid;
