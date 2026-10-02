// ============================================================
// BOTÃO ATIVO?
// ============================================================

if (instance_exists(obj_battle_manager))
{
    enabled =
        obj_battle_manager.state ==
        BattleState.PLAYER_CHOICE;
}
else
{
    enabled = false;
}


// ============================================================
// TRANSPARÊNCIA
// ============================================================

if (enabled)
{
    image_alpha = 1;
}
else
{
    image_alpha = 0.3;
}


// ============================================================
// SCALE
// ============================================================

scale_current =
    lerp(
        scale_current,
        scale_target,
        0.2
    );