///@desc Round to number of decimal places.
///@arg value
///@arg decimal_places

var value = argument0;
var dec = argument1;

var mult = power(10,dec);

return floor(value*mult)/mult;