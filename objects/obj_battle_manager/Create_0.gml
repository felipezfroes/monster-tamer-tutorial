// ============================================================
// MONSTER TAMER DO ZERO
// EP01 - BATALHA POR TURNOS
// ============================================================


// ============================================================
// DADOS TEMPORÁRIOS DAS CRIATURAS
// ============================================================

// Por enquanto as criaturas são structs simples.
//
// No episódio de estrutura das criaturas vamos transformar
// isso em um sistema reutilizável.

player_data =
{
    name: "HUNTER",

    sprite: spr_player_monster,

    level: 1,

    hp: 20,
    hp_max: 20,

    attack: 5,
    defense: 2
};


enemy_data =
{
    name: "SLIME",

    sprite: spr_enemy,

    level: 1,

    hp: 12,
    hp_max: 12,

    attack: 4,
    defense: 1
};


// ============================================================
// TEXTO
// ============================================================

battle_text =
    "O que " +
    player_data.name +
    " vai fazer?";