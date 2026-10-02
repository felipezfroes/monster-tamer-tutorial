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
// BATALHA
// ============================================================

state = BattleState.PLAYER_CHOICE;

state_timer = 0;


// Em qual frame o dano acontece durante a animação
hit_frame = 10;


// Quanto tempo dura cada ação
action_duration = 36;


// ============================================================
// TEXTO
// ============================================================

battle_text =
    "O que " +
    player_data.name +
    " vai fazer?";


// ============================================================
// FUNÇÕES
// ============================================================

player_attack = function()
{
    // Só pode atacar durante a escolha do jogador.

    if (state != BattleState.PLAYER_CHOICE)
    {
        return;
    }


    state = BattleState.PLAYER_ATTACK;

    state_timer = 0;


    battle_text =
        player_data.name +
        " atacou!";
};