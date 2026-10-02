// ============================================================
// BOTÃO
// ============================================================

draw_sprite_ext( spr_btn_normal, image_index, x, y, scale_current, scale_current, 0, c_white, image_alpha );


// ============================================================
// TEXTO
// ============================================================

draw_set_font(fnt_pixel);

draw_set_halign(fa_center);

draw_set_valign(fa_middle);


draw_set_color(c_white);


draw_text(
    x,
    y,

    name
);


// ============================================================
// RESET
// ============================================================

draw_set_color(c_white);

draw_set_halign(fa_left);

draw_set_valign(fa_top);