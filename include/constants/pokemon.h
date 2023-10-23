#ifndef GUARD_CONSTANTS_POKEMON_H
#define GUARD_CONSTANTS_POKEMON_H

#define MON_DATA_PERSONALITY        0
#define MON_DATA_OT_ID              1
#define MON_DATA_NICKNAME           2
#define MON_DATA_LANGUAGE           3
#define MON_DATA_SANITY_BIT1        4
#define MON_DATA_SANITY_BIT2        5
#define MON_DATA_SANITY_BIT3        6
#define MON_DATA_OT_NAME            7
#define MON_DATA_MARKINGS           8
#define MON_DATA_CHECKSUM           9
#define MON_DATA_10                10
#define MON_DATA_SPECIES           11
#define MON_DATA_HELD_ITEM         12
#define MON_DATA_MOVE1             13
#define MON_DATA_MOVE2             14
#define MON_DATA_MOVE3             15
#define MON_DATA_MOVE4             16
#define MON_DATA_PP1               17
#define MON_DATA_PP2               18
#define MON_DATA_PP3               19
#define MON_DATA_PP4               20
#define MON_DATA_PP_BONUSES        21
#define MON_DATA_COOL              22
#define MON_DATA_BEAUTY            23
#define MON_DATA_CUTE              24
#define MON_DATA_EXP               25
#define MON_DATA_HP_EV             26
#define MON_DATA_ATK_EV            27
#define MON_DATA_DEF_EV            28
#define MON_DATA_SPEED_EV          29
#define MON_DATA_SPATK_EV          30
#define MON_DATA_SPDEF_EV          31
#define MON_DATA_FRIENDSHIP        32
#define MON_DATA_SMART             33
#define MON_DATA_POKERUS           34
#define MON_DATA_MET_LOCATION      35
#define MON_DATA_MET_LEVEL         36
#define MON_DATA_MET_GAME          37
#define MON_DATA_POKEBALL          38
#define MON_DATA_HP_IV             39
#define MON_DATA_ATK_IV            40
#define MON_DATA_DEF_IV            41
#define MON_DATA_SPEED_IV          42
#define MON_DATA_SPATK_IV          43
#define MON_DATA_SPDEF_IV          44
#define MON_DATA_IS_EGG            45
#define MON_DATA_ALT_ABILITY       46
#define MON_DATA_TOUGH             47
#define MON_DATA_SHEEN             48
#define MON_DATA_OT_GENDER         49
#define MON_DATA_COOL_RIBBON       50
#define MON_DATA_BEAUTY_RIBBON     51
#define MON_DATA_CUTE_RIBBON       52
#define MON_DATA_SMART_RIBBON      53
#define MON_DATA_TOUGH_RIBBON      54
#define MON_DATA_STATUS            55
#define MON_DATA_LEVEL             56
#define MON_DATA_HP                57
#define MON_DATA_MAX_HP            58
#define MON_DATA_ATK               59
#define MON_DATA_DEF               60
#define MON_DATA_SPEED             61
#define MON_DATA_SPATK             62
#define MON_DATA_SPDEF             63
#define MON_DATA_MAIL              64
#define MON_DATA_SPECIES2          65
#define MON_DATA_IVS               66
#define MON_DATA_CHAMPION_RIBBON   67
#define MON_DATA_WINNING_RIBBON    68
#define MON_DATA_VICTORY_RIBBON    69
#define MON_DATA_ARTIST_RIBBON     70
#define MON_DATA_EFFORT_RIBBON     71
#define MON_DATA_MARINE_RIBBON     72
#define MON_DATA_LAND_RIBBON       73
#define MON_DATA_SKY_RIBBON        74
#define MON_DATA_COUNTRY_RIBBON    75
#define MON_DATA_NATIONAL_RIBBON   76
#define MON_DATA_EARTH_RIBBON      77
#define MON_DATA_WORLD_RIBBON      78
#define MON_DATA_EVENT_LEGAL       79
#define MON_DATA_KNOWN_MOVES       80
#define MON_DATA_RIBBON_COUNT      81
#define MON_DATA_RIBBONS           82
#define MON_DATA_83                83
#define MON_DATA_ATK2              84
#define MON_DATA_DEF2              85
#define MON_DATA_SPEED2            86
#define MON_DATA_SPATK2            87
#define MON_DATA_SPDEF2            88

// Shiny odds
#define SHINY_ODDS 8 // Actual probability is SHINY_ODDS/65536
#define GET_SHINY_VALUE(otId, personality) (HIHALF(otId) ^ LOHALF(otId) ^ HIHALF(personality) ^ LOHALF(personality))

#define MIN_LEVEL 1
#define MAX_LEVEL 100

#define OT_ID_PLAYER_ID       0
#define OT_ID_PRESET          1
#define OT_ID_RANDOM_NO_SHINY 2

#define MON_MALE       0x00
#define MON_FEMALE     0xFE
#define MON_GENDERLESS 0xFF

#define TYPE_NORMAL   0x00
#define TYPE_FIGHTING 0x01
#define TYPE_FLYING   0x02
#define TYPE_POISON   0x03
#define TYPE_GROUND   0x04
#define TYPE_ROCK     0x05
#define TYPE_BUG      0x06
#define TYPE_GHOST    0x07
#define TYPE_STEEL    0x08
#define TYPE_MYSTERY  0x09
#define TYPE_FIRE     0x0a
#define TYPE_WATER    0x0b
#define TYPE_GRASS    0x0c
#define TYPE_ELECTRIC 0x0d
#define TYPE_PSYCHIC  0x0e
#define TYPE_ICE      0x0f
#define TYPE_DRAGON   0x10
#define TYPE_DARK     0x11
#define NUMBER_OF_MON_TYPES     0x12

#define FRIENDSHIP_EVENT_GROW_LEVEL           0x0
#define FRIENDSHIP_EVENT_VITAMIN              0x1 // unused
#define FRIENDSHIP_EVENT_BATTLE_ITEM          0x2 // unused
#define FRIENDSHIP_EVENT_LEAGUE_BATTLE        0x3
#define FRIENDSHIP_EVENT_LEARN_TMHM           0x4
#define FRIENDSHIP_EVENT_WALKING              0x5
#define FRIENDSHIP_EVENT_FAINT_SMALL          0x6
#define FRIENDSHIP_EVENT_FAINT_OUTSIDE_BATTLE 0x7
#define FRIENDSHIP_EVENT_FAINT_LARGE          0x8

#define STATUS_PRIMARY_NONE      0x0
#define STATUS_PRIMARY_POISON    0x1
#define STATUS_PRIMARY_PARALYSIS 0x2
#define STATUS_PRIMARY_SLEEP     0x3
#define STATUS_PRIMARY_FREEZE    0x4
#define STATUS_PRIMARY_BURN      0x5
#define STATUS_PRIMARY_POKERUS   0x6
#define STATUS_PRIMARY_FAINTED   0x7

#define MAX_TOTAL_EVS 510
#define NUM_STATS 6
#define UNOWN_FORM_COUNT 28

#define MIN_STAT_STAGE     0
#define DEFAULT_STAT_STAGE 6
#define MAX_STAT_STAGE    12

#define PLAYER_HAS_TWO_USABLE_MONS     0
#define PLAYER_HAS_ONE_MON             1
#define PLAYER_HAS_ONE_USABLE_MON      2

#endif // GUARD_CONSTANTS_POKEMON_H
