var i;
for(i=0; i<global.map_image_count; i+=1)
    sprite_delete(global.map_images[i]);
global.map_image_count = 0;
