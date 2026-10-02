switch (state)
{
    // ========================================================
    // ESCOLHA DO PLAYER
    // ========================================================

    case BattleState.PLAYER_CHOICE:
    {
        // Não fazemos nada.
        //
        // Estamos apenas esperando o jogador apertar ATACAR.

        break;
    }


    // ========================================================
    // ATAQUE DO PLAYER
    // ========================================================

    case BattleState.PLAYER_ATTACK:
    {
        state_timer++;


        // ----------------------------------------------------
        // COMEÇA ANIMAÇÃO
        // ----------------------------------------------------

        if (state_timer == 1)
        {
            if (instance_exists(obj_battle_player))
            {
                obj_battle_player.attack_timer = 12;
            }
        }


        // ----------------------------------------------------
        // MOMENTO DO IMPACTO
        // ----------------------------------------------------

        if (state_timer == hit_frame)
        {
            var _damage =
                battle_calculate_damage(
                    player_data,
                    enemy_data
                );


            enemy_data.hp =
                max(
                    0,
                    enemy_data.hp - _damage
                );


            // Flash do inimigo

            if (instance_exists(obj_battle_monster))
            {
                obj_battle_monster.hit_timer = 8;
            }


            // Som

            //if (audio_exists(snd_tackle))
            //{
                //audio_play_sound( snd_tackle, 1, false );
            //}
        }


        // ----------------------------------------------------
        // TERMINOU O ATAQUE
        // ----------------------------------------------------

        if (state_timer >= action_duration)
        {
            // Inimigo morreu?

            if (enemy_data.hp <= 0)
            {
                state = BattleState.FINISHED;


                battle_text =
                    enemy_data.name +
                    " foi derrotado!";
            }

            else
            {
                // Agora é a vez do inimigo.

                state = BattleState.ENEMY_ATTACK;

                state_timer = 0;


                battle_text =
                    enemy_data.name +
                    " atacou!";
            }
        }

        break;
    }


    // ========================================================
    // ATAQUE DO INIMIGO
    // ========================================================

    case BattleState.ENEMY_ATTACK:
    {
        state_timer++;


        // ----------------------------------------------------
        // COMEÇA ANIMAÇÃO
        // ----------------------------------------------------

        if (state_timer == 1)
        {
            if (instance_exists(obj_battle_monster))
            {
                obj_battle_monster.attack_timer = 12;
            }
        }


        // ----------------------------------------------------
        // IMPACTO
        // ----------------------------------------------------

        if (state_timer == hit_frame)
        {
            var _damage =
                battle_calculate_damage(
                    enemy_data,
                    player_data
                );


            player_data.hp =
                max(
                    0,
                    player_data.hp - _damage
                );


            if (instance_exists(obj_battle_player))
            {
                obj_battle_player.hit_timer = 8;
            }


            //if (audio_exists(snd_tackle))
            //{
                //audio_play_sound( snd_tackle, 1, false );
            //}
        }


        // ----------------------------------------------------
        // TERMINOU
        // ----------------------------------------------------

        if (state_timer >= action_duration)
        {
            // Player morreu?

            if (player_data.hp <= 0)
            {
                state = BattleState.FINISHED;


                battle_text =
                    player_data.name +
                    " foi derrotado!";
            }

            else
            {
                // Devolve o controle ao jogador.

                state = BattleState.PLAYER_CHOICE;

                state_timer = 0;


                battle_text =
                    "O que " +
                    player_data.name +
                    " vai fazer?";
            }
        }

        break;
    }


    // ========================================================
    // FIM
    // ========================================================

    case BattleState.FINISHED:
    {
        // EP01 termina aqui.
        //
        // Vitória, derrota e saída da batalha
        // ganharão um episódio próprio.

        break;
    }
}