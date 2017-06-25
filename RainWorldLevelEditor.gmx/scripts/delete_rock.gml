// arg0 - index of rock to remove from rock list
// Delete the rock and shift all subsequent rocks down in the array list.
if (argument[0] >= 0 && argument[0] < global.rock_count) {
    for(i=argument[0]; i<global.rock_count-1; i+=1) {
        global.rock_tilex[i] = global.rock_tilex[i+1];
        global.rock_tiley[i] = global.rock_tiley[i+1];
    }
    global.rock_count -= 1;
}
