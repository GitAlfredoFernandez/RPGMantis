///scr_chance(percentege)
var percent = argument[0]; // Between 0-1
percent = clamp(percent, 0,1);
return (random(1) < percent);  // evalua condicion y devuelve TRUE or FALSE
