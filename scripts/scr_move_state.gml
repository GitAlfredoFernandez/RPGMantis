/// scr_move_state
scr_get_input();

if (dash_key && obj_player_stats.stamina >= DASH_COST)
{
    state = scr_dash_state;
    alarm[0] = room_speed/6; // Activa la alarma de cuenta regresiva en room_speed (que es 30) divido 8 o sea la cantidad de cuadros por segundo divido 8 o algo asi.
    obj_player_stats.stamina -=DASH_COST;
    obj_player_stats.alarm[0] = room_speed;
}

if (attack_key)
{
    /* 
        Volvemos al index 0 de la animacion de caminar del pj
        Porque sino cuando empieza la animación del ataque vamos a estar en el mismo
        indice que el de caminar y como el indice de caminar puede ser hasta 7 porque
        tenemos 7 sprites y atacar solo 2, puede fallar.
    */
    image_index = 0; 
    state = scr_attack_state;
}
// Get Direction
dir = point_direction(0,0,xaxis,yaxis);

// Get the length
if (xaxis == 0 and yaxis == 0)
    {
        len = 0;    
    } 
else
    {
        len = spd;
        scr_get_face();
    }

// Get the hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = .3;
if (len == 0) image_index = 0;


switch (face)
{
    case RIGHT:
        sprite_index = spr_player_right;
        break;
    case LEFT:
        sprite_index = spr_player_left;
        break;
    case DOWN:
        sprite_index = spr_player_down;
        break;
    case UP:
        sprite_index = spr_player_up;
        break;
}
