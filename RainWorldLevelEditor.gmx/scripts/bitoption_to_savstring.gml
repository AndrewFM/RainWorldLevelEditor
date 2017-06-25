// arg: hex number

var flags, flagcheck, counter, retstring;

flags = argument[0];
counter = 1;
retstring = "";

while(flags != 0)
{
    flagcheck = flags >> 1;
    flagcheck = flagcheck << 1;
    if(flags != flagcheck)
    {
        retstring = (retstring + string(counter));
        flagcheck = flags >> 1;
        if(flagcheck != 0)
        {
            retstring = (retstring + ",");
        }
    }
    flags = flags >> 1;
    counter += 1;
}

return retstring;
