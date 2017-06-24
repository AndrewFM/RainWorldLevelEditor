#define string_split
// arg0 - string
// arg1 - delimeter
//
// Returns array:
//      ind0 - Number of elements in the array (not including this one)
//      ind1+ - All of the split elements

var ind, working_str, del_pos;
working_str = argument0;
ind = 1;
del_pos = string_pos(argument1, working_str);
while (del_pos != 0) {
    retarray[ind] = string_copy(working_str, 1, del_pos-1);
    ind += 1;
    working_str = string_delete(working_str, 1, del_pos);
    del_pos = string_pos(argument1, working_str);
}
retarray[ind] = working_str;
retarray[0] = ind;

return retarray;

#define string_split2
// arg0 - string
// arg1 - delimeter
//
// Returns array:
//      ind0 - Number of elements in the array (not including this one)
//      ind1+ - All of the split elements

var ind, working_str, del_pos;
working_str = argument0;
ind = 1;
del_pos = string_pos(argument1, working_str);
while (del_pos != 0) {
    retarray2[ind] = string_copy(working_str, 1, del_pos-1);
    ind += 1;
    working_str = string_delete(working_str, 1, del_pos);
    del_pos = string_pos(argument1, working_str);
}
retarray2[ind] = working_str;
retarray2[0] = ind;

return retarray2;
