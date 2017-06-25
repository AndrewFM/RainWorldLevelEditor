// argument1 : 
var col, rval, t, xofs, yofs, colpos

col = argument1;

if((color_get_red(col) == 255) && (color_get_green(col) == 255) && (color_get_blue(col) == 255))
{
    colpos[0] = 0;
    colpos[1] = 7;
    return colpos;
}


rval = color_get_red(col);

t = false;
if(rval > 90)
{
    col -= 90;
}
else
{
    t = true;
}

yofs = floor(rval/30);
xofs = (rval-1)%30;

if(t)
{
    colpos[0] = xofs;
    colpos[1] = yofs;    
}
else
{
    colpos[0] = xofs;
    colpos[1] = yofs+3;
}

return colpos;
