/// scr_boss_choose_next_state
if (alarm[0] <= 0)
{
    state = choose(scr_boss_wander_state, scr_boss_idle_state); // Elige Random una de estas dos opciones

    // Setea el tiempo de la alarma para el proximo movimiento del PJ
    alarm[0] = room_speed*irandom_range(2,4);
    
    //Setea la posicion a la que se mueve el enemigo en forma random.
    targetx = random(room_width);
    targety = random(room_height);
}
