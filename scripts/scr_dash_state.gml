/// scr_move_state

len = spd*4; // se mueve 4 veces mas rapido

// Get the hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Create the dash effect
var dash = instance_create(x,y,obj_dash_effect);  // Crea el objeto en una posicion dada.
dash.sprite_index = sprite_index;
dash.image_index = image_index;



