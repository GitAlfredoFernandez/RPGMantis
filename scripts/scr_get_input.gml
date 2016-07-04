///scr_get_input
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord('C')); // Para acceder a la TECLA C del teclado se usa ORD('C') o cualquier otra tecla
attack_key = keyboard_check_pressed(ord('X'));

// Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// Check for gamepad input
if (gamepad_is_connected(0))
{
    gamepad_set_axis_deadzone(0,.35);
    xaxis = gamepad_axis_value(0,gp_axislh);
    yaxis = gamepad_axis_value(0,gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face1); // face1 boton A 
    attack_key = gamepad_button_check_pressed(0, gp_face3); // face1 boton X
/*
Movimiento rudimentario solo 8 ejes
    right_key = (gamepad_axis_value(0,gp_axislh) >= .5);  // Si esto es TRUE va a hacer la variable RIGHT TRUE
    left_key = (gamepad_axis_value(0,gp_axislh) <= -.5);   
    down_key = (gamepad_axis_value(0,gp_axislv) >= .5);
    up_key = (gamepad_axis_value(0,gp_axislv) <= .5);
*/

}
