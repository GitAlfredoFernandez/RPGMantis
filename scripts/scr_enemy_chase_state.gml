/// scr_enemy_chase_state
scr_check_for_player();
var dir = point_direction(x,y,targetx,targety);
var hspd = lengthdir_x(spd,dir);
var vspd = lengthdir_y(spd,dir);
image_xscale = sign(hspd); // para que el enemigo apunte al pj
phy_position_x += hspd;
phy_position_y += vspd; 
