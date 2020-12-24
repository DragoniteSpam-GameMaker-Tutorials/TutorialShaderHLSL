show_debug_message(shader_is_compiled(shd_passthrough_hlsl));
shader_set(shd_passthrough_hlsl);

if (casting_frame == 0) {
    sprite_index = running ? spr_duckling_run : spr_duckling;
    event_inherited();
} else {
    var frame_count = sprite_get_number(spr_duckling_cast) / 4;
    draw_sprite(spr_duckling_cast, ((anim_dir + 1) * frame_count) - casting_frame, x, y);
}

shader_reset();