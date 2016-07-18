//make a variable for the length of a string and set it to 0
//make a variable for the longest string and set it to ""
//loop through each index of an array
  //for each index find out how long the string is 
  //if the string is longer than what is stored in the current 
  //string length variable 
    //make the variable equal the length of the current string in the array
    //make the longest variable equal to the current string

function LongestString(string) {
  var stringLength = 0;
  var longest = "";
  for (var i = 0; i < string.length; i++) {
    if (string[i].length == stringLength) {
      longest += ", " + string[i];
    } 
    if (string[i].length > stringLength) {
      stringLength = string[i].length;
      longest = string[i];
    }
  }
  return longest;
}

//compare objects to see if they share any of the same keys
  //if they share a key
    //check to see if the value is also the same
      //if this is also true return true
      //otherwise keep searching for matching keys

function ShareKeyValuePair(object1, object2) {
  for (var key in object1) {
      if (object2.hasOwnProperty(key) && object1[key] == object2[key]) {
        return true;
      }
  }
  return false;
}

function ArrayBuilder(length) {
  var str = 'abcdefghijklmnopqrstuvwxyz';
  var newStrAry = []
  var newStr = "";
  for (var j = 0; j < length; j++) {
    var randNum = Math.floor((Math.random() * 10) + 1);
    for (var k = 0; k < randNum; k++) {
      var randLetter = Math.floor((Math.random() * 10) + 1);
      newStr += str[randLetter];
    }
    newStrAry[j] = newStr;
    newStr = "";
  }
  return newStrAry
}


// console.log(LongestString(["long phrase","longest phrase","longer phrase"]))
// console.log(LongestString(["hello", "hi there", "well", "ummmmmmm", "dunno"]))


// var tati = {likes: 'ice cream', from: 'Wisco'};
// var soren = {likes: 'chocolate', from: 'NYC'};

// console.log(ShareKeyValuePair(tati, soren));

// var tati = {likes: 'ice cream', from: 'Wisco', school: 'Oberlin'};
// var soren = {likes: 'chocolate', from: 'NYC', school: 'Oberlin'};


// console.log(ShareKeyValuePair(tati, soren));

// console.log(ArrayBuilder(3));

for (var i = 0; i <= 10; i++) {
  var length = Math.floor((Math.random() * 10) + 1);
  var array = ArrayBuilder(length);
  console.log(array);
  console.log(LongestString(array));
  console.log("");
}




