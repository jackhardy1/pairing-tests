var expect = require('chai').expect;
var Control = require('../control.js').Control;
var Robot = require('../robot.js').Robot;
var Grid = require('../grid.js').Grid;

describe('Control', function(){
  describe('movements', function(){
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
      control.enterInstructions('N N S W E E S N W S');
      expect(control.robot.grid.current_y_position).to.equal(3);
      expect(control.robot.grid.current_x_position).to.equal(7);
    });

    it('robot cannot move outside of warehouse bounds', function(){
      control.enterInstructions('N N N N N N N N N N N N N');
      expect(control.robot.grid.current_y_position).to.equal(10);
      expect(control.robot.grid.current_x_position).to.equal(5);
    });
  });

  describe('moving the crate', function(){
    var grid;
    var robot;
    var control;

    beforeEach(function () {
      grid = new Grid(10,10,5,5);
      robot = new Robot(grid);
      control = new Control(robot);
      grid.addCrate(5,5);
      grid.addCrate(8,9);
    });

    xit('can pick up a crate', function(){
      control.enterInstructions('G');
      console.log(control.robot.isLiftingCrate);
      expect(control.robot.isLifitngCrate).to.be.true
    });
  });
});
