//arg0 - val
//arg1 - min
//arg2 - max
//return - 
//          if (min <= val <= max)  : returns val
//          if (val < min)          : returns max
//          if (val > max)          : returns min

if (argument0 < argument1)
    return argument2;
else if (argument0 > argument2)
    return argument1;
else
    return argument0;
