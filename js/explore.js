//loop through the string backwards
    //for each iteration of the loop add the character to a variable

function reverse(str) {
  var lastChar = "";
  for (var i = str.length - 1; i >= 0; i--) {
    lastChar += str[i];
  }
  return lastChar;
}
var str = "hello";
console.log(reverse(str));

console.log(reverse("cookies"));

var candy = reverse("candy");

if("candy" == "candy") {
  console.log(candy);
}
