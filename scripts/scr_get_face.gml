/// scr_get_face();

// al dividir la variable dir que almacena la dirección en la que se mueve
// el PJ x 90, y teniendo en cuenta que se mueve en 360 grados
// vamos a lograr obtener 4 "cuadrantes" por donde se va a estar moviendo

// Numero paso por aqui!!!!

face = round(dir/90);   
if (face == 4) face = RIGHT;
