var expect = require('chai').expect

describe('#treasureMachine()', function(){
  var treasureMachine = require('../treasure_machine.js').treasureMachine;
  it('returns true if the treasure can be split', function(){
    expect(treasureMachine([4,4,4],3)).to.be.true;
  });

  it('returns true if the treasure can be split', function(){
    expect(treasureMachine([27,7,20],2)).to.be.true;
  });

  it('returns true if the treasure can be split', function(){
    expect(treasureMachine([6,3,2,4,1],2)).to.be.true;
  });

  it('returns true if the treasure can be split', function(){
    expect(treasureMachine([3,2,7,7,14,5,3,4,9,2],4)).to.be.true;
  });

  it('retruns false if the treasure cannot be split', function(){
    expect(treasureMachine([27,7,20],3)).to.be.false;
  });
});
