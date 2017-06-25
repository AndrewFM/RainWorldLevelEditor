// Removes objects from the map if they are outside the map boundaries.
var full_pass, i;

// Delete spears
full_pass = false;
while (!full_pass) {
    full_pass = true;
    for(i=0; i<global.spear_count; i+=1) {
        if (global.spear_tilex[i] >= global.map_tile_width || global.spear_tiley[i] >= global.map_tile_height) {
            delete_spear(i);
            full_pass = false;
            break;
        }
    }
} 

// Delete rocks
full_pass = false;
while (!full_pass) {
    full_pass = true;
    for(i=0; i<global.rock_count; i+=1) {
        if (global.rock_tilex[i] >= global.map_tile_width || global.rock_tiley[i] >= global.map_tile_height) {
            delete_rock(i);
            full_pass = false;
            break;
        }
    }
} 
