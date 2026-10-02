enum BattleState
{
    PLAYER_CHOICE,
    PLAYER_ATTACK,
    ENEMY_ATTACK,
    FINISHED
}


/// @function battle_calculate_damage(attacker, defender)
/// @description Calcula o dano básico da batalha.
function battle_calculate_damage(_attacker, _defender)
{
    var _damage = _attacker.attack - _defender.defense;

    return max(1, _damage);
}