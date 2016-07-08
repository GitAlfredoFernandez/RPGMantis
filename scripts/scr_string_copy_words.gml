/// scr string copy words
var str = argument0;
var index = argument1;
var count = ceil(argument2); //ceil redondea para arriba

var char = string_char_at(str,count);
while (char != " " && char != "")
{
    count++;
    char = string_char_at(str,count);
}

var return_str = string_copy(str, index, count);
return return_str;
