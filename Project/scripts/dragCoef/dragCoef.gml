///desc Return a drag coef based on frames passed
///@arg time
var time = argument[0]; //time passed

drag = clamp(roundTo(-power(e, (1/5)*(time-45) ) + 1,2),0,1);

return drag; //drag is multiplied by gravity to create the illusion of air resistance