var expect = require('chai').expect;
var Grid = require('../grid.js').Grid;

describe('Grid', function(){
  describe('#cratePresent()', function(){

    it('returns true if crate present at current location', function(){
      grid = new Grid(10,10,5,5);
      expect(grid.cratePresent()).to.be.true;
    });

    it('returns false if crate present at current location', function(){
      grid = new Grid(10,10,2,2);
      expect(grid.cratePresent()).to.be.false;
    });
  });
});
