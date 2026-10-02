// ============================================================
// POSIÇÃO
// ============================================================

var _draw_x = x;

var _draw_y = y;


// ============================================================
// ATAQUE
// ============================================================

if (attack_timer > 0)
{
    var _progress =
        1 - (attack_timer / 12);


    var _movement =
        sin(_progress * pi);


    // Inimigo avança para baixo/esquerda.

    _draw_x -= _movement * 6;

    _draw_y += _movement * 3;
}


// ============================================================
// FLASH
// ============================================================

var _color = c_white;


if (hit_timer > 0)
{
    if (hit_timer mod 2 == 0)
    {
        _color = c_red;
    }
}

// ============================================================
// MONSTRO
// ============================================================

draw_sprite_ext(
    sprite_index,
    image_index,

    _draw_x,
    _draw_y,

    image_xscale,
    image_yscale,

    0,

    _color,

    1
);


// ============================================================
// HUD
// ============================================================

var _hud_x = 10;

var _hud_y = 10;


draw_sprite(
    spr_container_enemy,
    0,

    _hud_x,
    _hud_y
);


// ============================================================
// TEXTO
// ============================================================

draw_set_font(fnt_pixel);

draw_set_color(c_white);

draw_set_valign(fa_top);


draw_set_halign(fa_left);


draw_text(
    _hud_x + 6,
    _hud_y + 2,

    data.name
);


// Level

draw_set_halign(fa_right);


draw_text(
    _hud_x + 86,
    _hud_y + 2,

    "Lv " +
    string(data.level)
);


// ============================================================
// HP
// ============================================================

var _hp_percent =
    clamp(
        hp_display / data.hp_max,
        0,
        1
    );


var _bar_x = _hud_x + 6;

var _bar_y = _hud_y + 18;

var _bar_width = 48;

var _bar_height = 4;


// fundo

draw_set_color(
    make_color_rgb(
        35,
        40,
        48
    )
);


draw_rectangle(
    _bar_x,
    _bar_y,

    _bar_x + _bar_width,
    _bar_y + _bar_height,

    false
);


// vida

draw_set_color(
    hp_get_color(
        _hp_percent
    )
);


draw_rectangle(
    _bar_x,
    _bar_y,

    _bar_x +
    (_bar_width * _hp_percent),

    _bar_y + _bar_height,

    false
);


// ============================================================
// HP NUMÉRICO
// ============================================================

draw_set_color(c_white);

draw_set_halign(fa_right);


draw_text(
    _hud_x + 86,
    _hud_y + 12,

    string(data.hp)
    +
    "/"
    +
    string(data.hp_max)
);


// ============================================================
// RESET
// ============================================================

draw_set_color(c_white);

draw_set_halign(fa_left);

draw_set_valign(fa_top);