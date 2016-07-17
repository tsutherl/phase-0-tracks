//make a variable for the length of a string and set it to 0
//make a variable for the longest string and set it to ""
//loop through each index of an array
  //for each index find out how long the string is 
  //if the string is longer than what is stored in the current 
  //string length variable 
    //make the variable equal the length of the current string in the array
    //make the longest variable equal to the current string

function longest_string(string) {
  var string_length = 0;
  var longest = "";
  for (var i = 0; i < string.length; i++) {
    if (string[i].length == string_length) {
      longest += ", " + string[i];
    } 
    if (string[i].length > string_length) {
      string_length = string[i].length;
      longest = string[i];
    }
  }
  return longest;
}

console.log(longest_string(["long phrase","longest phrase","longer phrase"]))
console.log(longest_string(["hello", "hi there", "well", "ummmmmmm", "dunno"]))