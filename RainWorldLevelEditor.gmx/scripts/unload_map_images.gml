var i;
for(i=0; i<global.map_image_count; i+=1)
    sprite_delete(global.map_images[i]);
global.map_image_count = 0;
global.map_tile_width = 0;
global.map_tile_height = 0;
global.spear_count = 0;
global.rock_count = 0;
