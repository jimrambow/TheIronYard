var x = "Hello World";
var number = 1;
var number2 = 2;
console.log(number + number2);
console.log(x + number);
console.log(number + x)
console.log(typeof number)
var array = [1,2,3,4];
console.log(array[0]);
var hash = {hello_world: "Hey Will"};
console.log(hash.hello_world);


function loadJavascripts() {
  // jQuery selector
  // DOM - Document Object Model
  console.log($('body'))
  console.log($('.car_image'))
};

$(document).on("page:ready", loadJavascripts)
$(document).ready(loadJavascripts);



