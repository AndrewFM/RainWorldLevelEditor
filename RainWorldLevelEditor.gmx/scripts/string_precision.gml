var decimal_place;
decimal_place = string_pos(".", string(argument[0]));
if (decimal_place == 0)
    return string(argument[0]);
else
    return string_format(argument[0], decimal_place, argument[1]);
