// arg0 - tile type
// arg1 - x
// arg2 - y
var tx, ty, i, j;
tx = argument[1];
ty = argument[2];

switch (argument[0]) {
    case SOLID:
        draw_rectangle(tx, ty, tx+TILE_SIZE, ty+TILE_SIZE, false);
        break;
    case PIPE_ENT:
        draw_circle(tx+TILE_SIZE/2, ty+TILE_SIZE/2, TILE_SIZE/2, false);
        break;
    case FLOOR:
        draw_rectangle(tx, ty+TILE_SIZE*0.3, tx+TILE_SIZE, ty+TILE_SIZE*0.6, false);
        break;
    case SLOPE:
        i = tileid_x(tx);
        j = tileid_y(ty);
        if (i < 0 || i >= global.map_tile_width || j < 0 || j >= global.map_tile_height)
            draw_triangle(tx, ty, tx, ty+TILE_SIZE, tx+TILE_SIZE, ty+TILE_SIZE, false);
        else {
            if ((i+1 < 0 || i+1 >= global.map_tile_width || global.tile_type[i+1,j] == AIR) 
             && (j-1 < 0 || j-1 >= global.map_tile_height || global.tile_type[i,j-1] == AIR))
                draw_triangle(tx, ty, tx, ty+TILE_SIZE, tx+TILE_SIZE, ty+TILE_SIZE, false);
            else if ((i-1 < 0 || i-1 >= global.map_tile_width || global.tile_type[i-1,j] == AIR)
             && (j-1 < 0 || j-1 >= global.map_tile_height || global.tile_type[i,j-1] == AIR))
                draw_triangle(tx+TILE_SIZE, ty, tx+TILE_SIZE, ty+TILE_SIZE, tx, ty+TILE_SIZE, false);
            else if ((i+1 < 0 || i+1 >= global.map_tile_width || global.tile_type[i+1,j] == AIR)
             && (j+1 < 0 || j+1 >= global.map_tile_height || global.tile_type[i,j+1] == AIR))
                draw_triangle(tx, ty, tx, ty+TILE_SIZE, tx+TILE_SIZE, ty, false);
            else
                draw_triangle(tx+TILE_SIZE, ty, tx+TILE_SIZE, ty+TILE_SIZE, tx, ty, false);
        }
        break;
}
