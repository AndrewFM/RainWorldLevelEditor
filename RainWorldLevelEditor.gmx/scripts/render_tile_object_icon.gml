// arg0 - tile object type
// arg1 - x
// arg2 - y
var tx, ty;
tx = argument[1];
ty = argument[2];

switch (argument[0]) {
    case VERT_BEAM:
        draw_rectangle(tx+TILE_SIZE*0.4, ty, tx+TILE_SIZE*0.6, ty+TILE_SIZE, false);
        break;
    case HOR_BEAM:
        draw_rectangle(tx, ty+TILE_SIZE*0.4, tx+TILE_SIZE, ty+TILE_SIZE*0.6, false);
        break;
    case EXIT_ROOM:
        draw_circle(tx+TILE_SIZE/2, ty+TILE_SIZE/2, TILE_SIZE/2, true);
        draw_sprite_ext(spr_newroom, 0, tx, ty, 1, 1, 0, draw_get_color(), draw_get_alpha());
        break;
    case EXIT_MONSTER:
        draw_circle(tx+TILE_SIZE/2, ty+TILE_SIZE/2, TILE_SIZE/2, true);
        draw_sprite_ext(spr_mobpipe, 0, tx, ty, 1, 1, 0, draw_get_color(), draw_get_alpha());
        break;
    case EXIT_REGIONAL:
        draw_circle(tx+TILE_SIZE/2, ty+TILE_SIZE/2, TILE_SIZE/2, true);
        draw_sprite_ext(spr_regionpipe, 0, tx, ty, 1, 1, 0, draw_get_color(), draw_get_alpha());
        break;
    case EXIT_SCAV:
        draw_circle(tx+TILE_SIZE/2, ty+TILE_SIZE/2, TILE_SIZE/2, true);
        draw_sprite_ext(spr_shortcutpipe, 0, tx, ty, 1, 1, 0, draw_get_color(), draw_get_alpha());
        break;
    case BAT_NEST:
        draw_circle(tx+TILE_SIZE/2, ty+TILE_SIZE/2, TILE_SIZE/2, true);
        draw_sprite_ext(spr_batfly, 0, tx, ty, 1, 1, 0, draw_get_color(), draw_get_alpha());
        break;
    case GARBAGE_HOLE:
        draw_circle(tx+TILE_SIZE/2, ty+TILE_SIZE/2, TILE_SIZE/2, true);
        draw_sprite_ext(spr_garbagehole, 0, tx, ty, 1, 1, 0, draw_get_color(), draw_get_alpha());
        break;
    case WATERFALL:
        draw_circle(tx+TILE_SIZE/2, ty+TILE_SIZE/2, TILE_SIZE/2, true);
        draw_sprite_ext(spr_waterfall, 0, tx, ty, 1, 1, 0, draw_get_color(), draw_get_alpha());
        break;
    case WORM_GRASS:
        draw_sprite_ext(spr_wormgrass, 0, tx, ty, 1, 1, 0, draw_get_color(), draw_get_alpha());
        break;
    case PIPE_PATH:
        draw_rectangle(tx+TILE_SIZE*0.35, ty+TILE_SIZE*0.35, tx+TILE_SIZE*0.65, ty+TILE_SIZE*0.65, false);
        break;
}
