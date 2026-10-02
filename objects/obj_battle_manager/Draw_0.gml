// ============================================================
// PAINEL INFERIOR
// ============================================================

draw_set_color(
    make_color_rgb(
        11,
        16,
        25
    )
);


draw_rectangle(
    0,
    135,
    room_width,
    room_height,
    false
);


// ============================================================
// BORDA
// ============================================================

draw_set_color(
    make_color_rgb(
        45,
        72,
        110
    )
);


draw_rectangle(
    0,
    135,
    room_width,
    room_height,
    true
);


// ============================================================
// TEXTO
// ============================================================

draw_set_font(fnt_pixel);

draw_set_color(c_white);

draw_set_halign(fa_left);

draw_set_valign(fa_top);


draw_text(
    8,
    145,
    battle_text
);


// ============================================================
// RESET
// ============================================================

draw_set_color(c_white);

draw_set_halign(fa_left);

draw_set_valign(fa_top);