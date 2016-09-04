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

  describe('moving the crate', function(){
    it('can pick up a crate', function(){
      var subject = new Robot;
      subject.pickUpCrate();
      expect(subject.isLiftingCrate).to.be.true
    });

    it('can pick up a crate', function(){
      var subject = new Robot;
      subject.pickUpCrate();
      subject.dropCrate();
      expect(subject.isLiftingCrate).to.be.false
    });

    xit('cannot pick up a crate if already lifting one', function(){
      var subject = new Robot;
      subject.pickUpCrate();
      expect()
    })
  });
});
