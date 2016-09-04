var expect = require('chai').expect;
var assert = require('chai').assert;
var Robot = require('../robot.js').Robot;
var Grid = require('../grid.js').Grid;

describe('Robot', function(){

  describe('default settings', function(){
    it('robot starts at x-5, y-5', function(){
      var subject = new Robot();
      expect(subject.grid.current_x_position).to.equal(5);
      expect(subject.grid.current_y_position).to.equal(5);
    });
  });

  describe('#moveNorth()', function(){
    it('moves North when instructed', function(){
      var subject = new Robot;
      subject.moveNorth();
      expect(subject.grid.current_y_position).to.equal(6);
    });
  });

  describe('#moveEast()', function(){
    it('moves East when instructed', function(){
      var subject = new Robot;
      subject.moveEast();
      expect(subject.grid.current_x_position).to.equal(6);
    });
  });

  describe('#moveSouth()', function(){
    it('moves South when instructed', function(){
      var subject = new Robot;
      subject.moveSouth();
      expect(subject.grid.current_y_position).to.equal(4);
    });
  });

  describe('#moveWest()', function(){
    it('moves West when instructed', function(){
      var subject = new Robot;
      subject.moveWest();
      expect(subject.grid.current_x_position).to.equal(4);
    });
  });

  // describe('error cases', function(){
  //   it('throws an error when tries to move out of bounds', function(done){
  //   var grid = new Grid(10,10,0,0);
  //   var subject = new Robot(grid);
  //   console.log(subject);
  //   // var handler = function(){subject.moveWest();}
  //   expect(subject.moveWest).to.throw(new AssertionError('Out of bounds!'));
  //
  //   expect(subject.current_x_position).to.equal(0);
  //   expect(subject.current_y_position).to.equal(0);
  //   done();
  //   });
  // });

});
