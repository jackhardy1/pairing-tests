var expect = require('chai').expect;
var Control = require('../control.js').Control;
var Robot = require('../robot.js').Robot;
var Grid = require('../grid.js').Grid;

describe('Control', function(){
  describe('movements', function(){
    it('can move robot north', function(){
      var grid = new Grid(10,10,5,5);
      var robot = new Robot(grid);
      var control = new Control(robot);
      control.enterInstructions('N');
      expect(control.robot.grid.current_y_position).to.equal(6);
      expect(control.robot.grid.current_x_position).to.equal(5);
    });

    it('can move robot north twice', function(){
      var grid = new Grid(10,10,5,5);
      var robot = new Robot(grid);
      var control = new Control(robot);
      control.enterInstructions('N N');
      expect(control.robot.grid.current_y_position).to.equal(7);
      expect(control.robot.grid.current_x_position).to.equal(5);
    });

    it('can move robot multiple commands', function(){
      var grid = new Grid(10,10,5,5);
      var robot = new Robot(grid);
      var control = new Control(robot);
      control.enterInstructions('N N S W E E S N W S');
      expect(control.robot.grid.current_y_position).to.equal(3);
      expect(control.robot.grid.current_x_position).to.equal(7);
    });

    it('robot cannot move outside of warehouse bounds', function(){
      var grid = new Grid(10,10,5,5);
      var robot = new Robot(grid);
      var control = new Control(robot);
      control.enterInstructions('N N N N N N N N');
      expect(control.robot.grid.current_y_position).to.equal(10);
      expect(control.robot.grid.current_x_position).to.equal(5);
    });
  });
});
