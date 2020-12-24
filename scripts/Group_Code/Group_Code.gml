function draw_nineslice(sprite, subimg, x1, y1, x2, y2) {
    var w = x2 - x1;
    var h = y2 - y1;
    var sw = sprite_get_width(sprite) / 3;
    var sh = sprite_get_height(sprite) / 3;
    var hxscale = (w - 2 * sw) / sw;
    var vyscale = (h - 2 * sh) / sh;
    
    draw_sprite_general(sprite, subimg, 0, 0, sw, sh, x1, y1, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_sprite_general(sprite, subimg, 2 * sw, 0, sw, sh, x1 + w - sw, y1, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_sprite_general(sprite, subimg, 2 * sw, 2 * sh, sw, sh, x1 + w - sw, y1 + h - sh, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_sprite_general(sprite, subimg, 0, 2 * sh, sw, sh, x1, y1 + h - sh, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_sprite_general(sprite, subimg, sw, 0, sw, sh, x1 + sw, y1, hxscale, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_sprite_general(sprite, subimg, sw, sh * 2, sw, sh, x1 + sw, y1 + h - sh, hxscale, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_sprite_general(sprite, subimg, 0, sh, sw, sh, x1, y1 + sh, 1, vyscale, 0, c_white, c_white, c_white, c_white, 1);
    draw_sprite_general(sprite, subimg, 2 * sw, sh, sw, sh, x1 + w - sw, y1 + sh, 1, vyscale, 0, c_white, c_white, c_white, c_white, 1);
    draw_sprite_general(sprite, subimg, sw, sh, sw, sh, x1 + sw, y1 + sh, hxscale, vyscale, 0, c_white, c_white, c_white, c_white, 1);
}