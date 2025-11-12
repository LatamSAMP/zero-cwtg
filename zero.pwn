
/*
 ________  ________  _______    ______
/        |/        |/       \  /      \
$$$$$$$$/ $$$$$$$$/ $$$$$$$  |/$$$$$$  |
    /$$/  $$ |__    $$ |__$$ |$$ |  $$ |
   /$$/   $$    |   $$    $$< $$ |  $$ |
  /$$/    $$$$$/    $$$$$$$  |$$ |  $$ |
 /$$/____ $$ |_____ $$ |  $$ |$$ \__$$ |
/$$      |$$       |$$ |  $$ |$$    $$/
$$$$$$$$/ $$$$$$$$/ $$/   $$/  $$$$$$/

Compact CW/TG GameMode
Inherited from Latam Community.

Contact the developers if you need the source gamemode, or create an issue if you find a bug.

Discords:
  - ne0de (791501695884066816)
  - troniq (1381408337781981196)
*/


// CONFIGURATION & INITIALIZATION
stock load_config_file(const filename[] = "config.ini");
stock config_load_auth(const filename[]);
stock config_load_hostname(const filename[]);
stock config_load_website(const filename[]);
stock config_load_languages(const filename[]);
stock config_load_teams(const filename[]);
stock config_load_maps(const filename[]);
stock config_load_duel_arenas(const filename[]);

// DATABASE FUNCTIONS
stock db_initialize();
stock db_create_tables();

// AUTHENTICATION FUNCTIONS
stock auth_init(playerid);
stock auth_register_account(playerid, const hash[]);
stock auth_update_player_ip(playerid);
stock auth_save_general(playerid);
stock auth_save_settings(playerid);
stock auth_save_stats(playerid);
stock auth_load_general(playerid);
stock auth_load_stats(playerid);
stock auth_load_settings(playerid);

// LANGUAGE FUNCTIONS
stock language_load_all();
stock lang_init(playerid);
stock lang_menu_selection(playerid);

// MAP FUNCTIONS
stock maps_load_all();
stock map_load_coord(map_id, const filename[]);
stock map_load_team_coord(map_id, const filename[], const team_name[], const team_id);

// DUEL FUNCTIONS
stock duels_load_all();
stock arena_load_coords(arena_id, const filename[]);
stock arena_load_team_coord(arena_id, const filename[], const key[], const position);
stock duel_menu_selection(playerid);
stock duel_arena_is_running(arena_id);
stock duel_update_player_pos(playerid, arena_id, position);
stock duel_try_start(playerid, arena_id);
stock duel_player_leave(playerid);
stock duel_unbug_if_needed(arena_id);
stock duel_arena_finish(arenaId, winnerId, loserId);

// TEAM FUNCTIONS
stock team_load_all();
stock team_menu_selection(playerid);
stock team_change_color(playerid, teamId, const colorStr[]);

// PLAYER FUNCTIONS
stock player_load_textdraws(playerid);
stock player_show_tdraws(playerid);
stock player_show_team_selection_tdraws(playerid);
stock player_hide_team_selection_tdraws(playerid);
stock player_hide_info_tdraws(playerid);
stock player_show_data_tdraws(playerid);
stock player_hide_data_tdraws(playerid);
stock player_show_team_textdraws(playerid);
stock player_hide_team_textdraws(playerid);
stock player_update_position(playerid);
stock player_get_fps(playerid);
stock player_update_all_fps();
stock player_change_skin(playerid, skin_id);

// MATCH FUNCTIONS
stock match_get_mode();
stock match_get_mode_name(match_mode, buffer[], bufsize = sizeof buffer);
stock match_update();
stock match_try_start(playerid, is_cw);
stock match_end(winnerTeamId, loserTeamId, const reason[]);
stock match_team_average_mmr(teamId);
stock match_calculate_mmr_change(mmr, opponent_mmr, bool:did_win);
stock match_try_stop(playerid = INVALID_PLAYER_ID);

// TEXTDRAW FUNCTIONS
stock textdraws_load_all();

// UTILITY FUNCTIONS
stock SecondsToISO8601(seconds);
stock HexToInt(const string[]);
stock ForceHexToInt(const string[], const intense[] = "33");
stock GetEmbedColor(color);
stock msg(playerid, const msg_key[], color = COLOR_WHITE, OPEN_MP_TAGS:...);
stock msgall(const msg_key[], color = COLOR_WHITE, OPEN_MP_TAGS:...);
stock log(const message[], OPEN_MP_TAGS:...);

// CALLBACKS
forward AUTH_FinishRegistration(playerid);
forward AUTH_LoginVerify(playerid, bool:success);
forward AUTH_AccountLoad(playerid);
forward AUTH_AccountCheck(playerid);
forward AUTH_HashPassword(playerid);
forward AUTH_OnFetchPlayerByIP(playerid, targetid);
forward TEAM_LeavePlayer(playerid, team_id);
forward TEAM_AssignPlayer(playerid, team_id, oldteam_id);
forward MATCH_OnCreate();
forward TIMER_OnGameUpdate();

