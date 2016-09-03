function treasureMachine(treasure,hunters){
  if(isEqualValue(treasure,hunters)) {
    return true
  } else {
    return false
  }
}

function isEqualValue(array,num){
  return (unique(array).length === 1 && array.length === num);
}

//uniq
function unique(arr) {
    var a = [];
    for (var i=0, l=arr.length; i<l; i++)
        if (a.indexOf(arr[i]) === -1 && arr[i] !== '')
            a.push(arr[i]);
    return a;
}

//each_cons
function eachCons(a, n) {
  var r = []
  for (var i = 0; i < a.length - n + 1; i++) {
    r.push(range(a, i, n))
  }
  return r
}
function range (a, i, n) {
  var r = []
  for (var j = 0; j < n; j++) {
    r.push(a[i + j])
  }
  return r
}

array = [6,3,2,4,1]

function totalDivisible(array,num){
  result = []
  result.push(0)
}

//divide into arrays
function divideArray(array,num){
  result = []
  var dividedArray = array.length / num
  for (var i=0; i<num; i++){

  }
}

//total
function sumArray(array){
  var sum = array.reduce(function(total, num){return total + num},0);
  return sum;
}

//suffle
function shuffle(array) {
    let counter = array.length;
    // While there are elements in the array
    while (counter > 0) {
        // Pick a random index
        let index = Math.floor(Math.random() * counter);
        // Decrease counter by 1
        counter--;
        // And swap the last element with it
        let temp = array[counter];
        array[counter] = array[index];
        array[index] = temp;
    }
    return array;
}


people = 2
array = [6,3,2,4,1]

function check(array){
  unsortedArray = array;
  result = [];
  first_element = array.splice(i,1);
  // 1 is taken from the array
  while (array.length > 1 && result) {
    for (var i = 0; i<array.length; i++) {
      if (first_element + array[i] === 4){
        result.push(first_element + array.shift())
      }
    }
  }
}






module.exports.treasureMachine = treasureMachine;
