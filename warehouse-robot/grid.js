class Grid {
  constructor(x_limit,y_limit,current_x_position,current_y_position){
    this.x_limit = x_limit || 10;
    this.y_limit = y_limit || 10;
    this.current_x_position = current_x_position || 5;
    this.current_y_position = current_y_position || 5;

    this.crates = [
      {
        location: [5,5],
      },
      {
        location: [8,8],
      },
      {
        location: [5,6],
      }
    ]
  }

  addCrate(crate){
    this.crates.push(crate);
  }

  cratePresent(){
    var robotLocation = this.showCurrentCoordinates();
    for (var i=0; i < this.crates.length; i++) {
      if (this.crates[i].location[0] === robotLocation[0]
        && this.crates[i].location[1] === robotLocation[1]){
        return true;
      } else {
        return false;
      }
    }
  }

  showCurrentCoordinates(){
    return [this.current_x_position,this.current_y_position]
  }

}

module.exports.Grid = Grid;
