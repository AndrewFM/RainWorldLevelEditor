var old_width, old_height, new_width, new_height, resp, i, j;

old_width = global.map_tile_width;
old_height = global.map_tile_height;

new_width = get_integer("Enter the new tile width.", old_width);
new_height = get_integer("Enter the new tile height.", old_height);

if (new_width < old_width || new_height < old_height) {
    resp = show_question("The new size is smaller than the old size! Data will be lost, and there is no undo for this action. Really continue?");
    if (resp == false)
        return 0;
}

if (new_width > old_width) {
    // Expanding width. Fill new tiles with solid blocks by default.
    global.map_tile_width = new_width;
    for(i=old_width; i<global.map_tile_width; i+=1) {
        for(j=0; j<global.map_tile_height; j+=1) {
            global.has_wall[i,j] = false;
            global.tile_object_flag[i,j] = 0;
            global.tile_type[i,j] = SOLID;
        }
    }
}
if (new_width < old_width)
    global.map_tile_width = new_width;

if (new_height > old_height) {
    // Expanding height. Fill new tiles with solid blocks by default.
    global.map_tile_height = new_height;
    for(i=0; i<global.map_tile_width; i+=1) {
        for(j=old_height; j<global.map_tile_height; j+=1) {
            global.has_wall[i,j] = false;
            global.tile_object_flag[i,j] = 0;
            global.tile_type[i,j] = SOLID;
        }
    }
}
if (new_height < old_height)
    global.map_tile_height = new_height;
    
purge_oob_objects();
