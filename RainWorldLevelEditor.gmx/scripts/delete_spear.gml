// arg0 - index of spear to remove from spear list
// Delete the spear and shift all subsequent spears down in the array list.
if (argument[0] >= 0 && argument[0] < global.spear_count) {
    for(i=argument[0]; i<global.spear_count-1; i+=1) {
        global.spear_tilex[i] = global.spear_tilex[i+1];
        global.spear_tiley[i] = global.spear_tiley[i+1];
    }
    global.spear_count -= 1;
}
