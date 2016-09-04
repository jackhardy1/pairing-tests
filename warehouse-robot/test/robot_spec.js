var expect = require('chai').expect;
var Robot = require('../robot.js').Robot;

describe('Robot', function(){

  describe('default settings', function(){
    it('robot starts at x-5, y-5', function(){
      var subject = new Robot();
      expect(subject.grid.x_axis).to.equal(5);
      expect(subject.grid.y_axis).to.equal(5);
    });
  });

  describe('#moveNorth()', function(){
    it('moves North when instructed', function(){
      var subject = new Robot;
      subject.moveNorth();
      expect(subject.grid.y_axis).to.equal(6);
    });
  });

  describe('#moveEast()', function(){
    it('moves East when instructed', function(){
      var subject = new Robot;
      subject.moveEast();
      expect(subject.grid.x_axis).to.equal(6);
    });
  });

  describe('#moveSouth()', function(){
    it('moves South when instructed', function(){
      var subject = new Robot;
      subject.moveSouth();
      expect(subject.grid.y_axis).to.equal(4);
    });
  });

  describe('#moveWest()', function(){
    it('moves West when instructed', function(){
      var subject = new Robot;
      subject.moveWest();
      expect(subject.grid.x_axis).to.equal(4);
    });
  });

});
