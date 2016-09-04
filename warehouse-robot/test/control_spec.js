var expect = require('chai').expect;
var Control = require('../control.js').Control;
var Robot = require('../robot.js').Robot;
var Grid = require('../grid.js').Grid;

describe('Control: ', function(){
  describe('Movements: ', function(){
    var grid;
    var robot;
    var control;

    beforeEach(function () {
      grid = new Grid(10,10,5,5);
      robot = new Robot(grid);
      control = new Control(robot);
    });

    it('can move robot north', function(){
      control.enterInstructions('N');
      expect(control.robot.grid.current_y_position).to.equal(6);
      expect(control.robot.grid.current_x_position).to.equal(5);
    });

    it('can move robot north twice', function(){
      control.enterInstructions('N N');
      expect(control.robot.grid.current_y_position).to.equal(7);
      expect(control.robot.grid.current_x_position).to.equal(5);
    });

    it('can move robot multiple commands', function(){
      control.enterInstructions('N N S W E E S N W');
      expect(control.robot.grid.current_y_position).to.equal(6);
      expect(control.robot.grid.current_x_position).to.equal(5);
    });

    it('robot cannot move outside of warehouse bounds', function(){
      control.enterInstructions('N N N N N N N N N N N N N');
      expect(control.robot.grid.current_y_position).to.equal(10);
      expect(control.robot.grid.current_x_position).to.equal(5);
    });
  });

  describe('Moving the crate: ', function(){
    var grid;
    var robot;
    var control;

    beforeEach(function () {
      grid = new Grid(10,10,5,5);
      robot = new Robot(grid);
      control = new Control(robot);
    });

    it('Can pick up a crate', function(){
      control.enterInstructions('G');
      expect(control.robot.isLiftingCrate).to.be.true
    });

    it('Can drop a crate', function(){
      control.enterInstructions('G S D');
      expect(control.robot.isLiftingCrate).to.be.false
    });

    it('Cannot pick up a crate if not there', function(){
      control.enterInstructions('N G');
      expect(control.robot.isLiftingCrate).to.be.false
    });

    it('Cannot drop a crate on another crate', function(){
      control.enterInstructions('G N D');
      console.log(control.robot);
      console.log(control.robot.grid.crates);
      expect(control.robot.isLiftingCrate).to.be.true
    });
  });
});
