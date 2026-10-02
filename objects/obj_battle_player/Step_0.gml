// ============================================================
// BARRA DE HP ANIMADA
// ============================================================

hp_display =
    lerp(
        hp_display,
        data.hp,
        0.15
    );


// Evita ficar eternamente aproximando.

if (abs(hp_display - data.hp) < 0.05)
{
    hp_display = data.hp;
}


// ============================================================
// TIMERS VISUAIS
// ============================================================

if (hit_timer > 0)
{
    hit_timer--;
}


if (attack_timer > 0)
{
    attack_timer--;
}