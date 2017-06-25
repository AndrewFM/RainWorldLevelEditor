// arg: hex number

var flags, counter, retstring;

flags = argument[0];
counter = 1;
retstring = "";

while(flags != 0)
{
    if (flags % 2 == 1) // right bit = 1
        retstring += "," + string(counter);
    flags = flags >> 1;
    counter += 1;
}

return retstring;
