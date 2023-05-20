#pragma once
#ifndef PORT_SOUND_LUT_H
#define PORT_SOUND_LUT_H

struct al_chunk_table {
    uint8_t flags;              // sound format, type, extra options 
    uint8_t ff_fx;              // force-feedback effect id
};
typedef struct al_chunk_table al_ct_t;

al_ct_t alct[3][70] = {
    {                           // day
     {0, 0},                    // id_0 -
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_1 OCEAN.WAV
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_2 WIND.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_3 EXPLOD3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_4 GAINMANA.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_5 FIRE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_6 ALLY.WAV
     {0, 0},                    // id_7 NULL.WAV
     {AL_FORMAT_MONO8_22050 | AL_IGNORE_RECODE, 0},        // id_8 DRAGROAR.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_9 FIREBAL1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_10 QUAKE4.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_11 FOOLMANA.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_12 BEE1.WAV
     {0, 0},                    // id_13 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_14 SELECT.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_15 FIREBAL2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_16 DIE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_17 HYDRA.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_18 GETSPELL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_19 SPEEDUP.WAV
     {0, 0},                    // id_20 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_21 PORTMAKE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_22 PORTUSE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_23 LITNING.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_24 EXPLOD3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_25 HEAL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_26 CLANG.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_27 SPLASH2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_28 REBOUND.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_29 CANTUSE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_30 METEOREX.WAV
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_31 MARKET.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_32 SPIDER.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_33 ARROW1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_34 ARROW2.WAV
     {0, 0},                    // id_35 NULL.WAV
     {0, 0},                    // id_36 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_37 CYMERIAN.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_38 DEEPONE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_39 WYVERN.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_40 MANASHOT.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_41 SWITCH.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_42 DEVIL.WAV
     {0, 0},                    // id_43 NULL.WAV
     {0, 0},                    // id_44 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_45 FIRE.WAV
     {AL_FORMAT_MONO8_22050 | AL_IGNORE_RECODE, 0}, // id_46 GOAT.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_47 DOORC2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_48 MWORM3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_49 TORNADO.WAV
     {0, 0},                    // id_50 NULL.WAV
     {0, 0},                    // id_51 NULL.WAV
     {0, 0},                    // id_52 NULL.WAV
     {0, 0},                    // id_53 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_54 HIT1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_55 HIT2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_56 HIT3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_57 HIT4.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_58 MADDOG.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_59 MDWELLER.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_60 MORPH.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_61 SUCCESS2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_62 ZOMBIE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_63 SPELLUP.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_64 GWELL.WAV
     {0, 0},                    // id_65 -
     {0, 0},                    // id_66 -
     {0, 0},                    // id_67 -
     {0, 0},                    // id_68 -
     {0, 0}                     // id_69 -
     },
    {                           // night
     {0, 0},                    // id_0 -
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_1 OCEAN.WAV
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_2 CRICKET2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_3 EXPLOD3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_4 GAINMANA.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_5 FIRE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_6 ALLY.WAV
     {0, 0},                    // id_7 NULL.WAV
     {AL_FORMAT_MONO8_22050 | AL_IGNORE_RECODE, 0},        // id_8 DRAGROAR.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_9 FIREBAL1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_10 QUAKE4.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_11 FOOLMANA.WAV
     {0, 0},                    // id_12 NULL.WAV
     {0, 0},                    // id_13 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_14 SELECT.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_15 FIREBAL2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_16 DIE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_17 HYDRA.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_18 GETSPELL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_19 SPEEDUP.WAV
     {0, 0},                    // id_20 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_21 PORTMAKE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_22 PORTUSE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_23 LITNING.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_24 EXPLOD3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_25 HEAL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_26 CLANG.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_27 SPLASH2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_28 REBOUND.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_29 CANTUSE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_30 METEOREX.WAV
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_31 MARKET.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_32 SPIDER.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_33 ARROW1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_34 ARROW2.WAV
     {0, 0},                    // id_35 NULL.WAV
     {0, 0},                    // id_36 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_37 CYMERIAN.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_38 DEEPONE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_39 WYVERN.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_40 MANASHOT.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_41 SWITCH.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_42 DEVIL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_43 FIREFLY1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_44 FIREFLY2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_45 FIRE.WAV
     {AL_FORMAT_MONO8_22050 | AL_IGNORE_RECODE, 0}, // id_46 GOAT.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_47 DOORC2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_48 MWORM3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_49 TORNADO.WAV
     {0, 0},                    // id_50 NULL.WAV
     {0, 0},                    // id_51 NULL.WAV
     {0, 0},                    // id_52 NULL.WAV
     {0, 0},                    // id_53 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_54 HIT1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_55 HIT2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_56 HIT3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_57 HIT4.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_58 MADDOG.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_59 MDWELLER.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_60 MORPH.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_61 SUCCESS2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_62 ZOMBIE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_63 SPELLUP.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_64 GWELL.WAV
     {0, 0},                    // id_65 -
     {0, 0},                    // id_66 -
     {0, 0},                    // id_67 -
     {0, 0},                    // id_68 -
     {0, 0}                     // id_69 -
     },
    {                           // cave
     {0, 0},                    // id_0 -
     {0, 0},                    // id_1 NULL.WAV
     {0, 0},                    // id_2 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_3 EXPLOD3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_4 GAINMANA.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_5 FIRE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_6 ALLY.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_7 CAVEMAN.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_8 DRAGROAR.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_9 FIREBAL1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_10 QUAKE4.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_11 FOOLMANA.WAV
     {0, 0},                    // id_12 NULL.WAV
     {0, 0},                    // id_13 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_14 SELECT.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_15 FIREBAL2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_16 DIE.WAV
     {0, 0},                    // id_17 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_18 GETSPELL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_19 SPEEDUP.WAV
     {0, 0},                    // id_20 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_21 PORTMAKE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_22 PORTUSE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_23 LITNING.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_24 EXPLOD3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_25 HEAL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_26 CLANG.WAV
     {0, 0},                    // id_27 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_28 REBOUND.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_29 CANTUSE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_30 METEOREX.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_31 MARKET.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_32 SPIDER.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_33 ARROW1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_34 ARROW2.WAV
     {0, 0},                    // id_35 NULL.WAV
     {0, 0},                    // id_36 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_37 CYMERIAN.WAV
     {0, 0},                    // id_38 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_39 WYVERN.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_40 MANASHOT.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_41 SWITCH.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_42 DEVIL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_43 FIREFLY1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_44 FIREFLY2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_45 FIRE.WAV
     {0, 0},                    // id_46 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_47 DOORC2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_48 MWORM3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_49 TORNADO.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_50 GLOOP1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_51 GLOOP2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_52 GLOOP3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_53 GLOOP4.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_54 HIT1.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_55 HIT2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_56 HIT3.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_57 HIT4.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_58 MADDOG.WAV
     {0, 0},                    // id_59 NULL.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_60 MORPH.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_61 SUCCESS2.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_62 ZOMBIE.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_63 SPELLUP.WAV
     {AL_FORMAT_MONO8_22050, 0},        // id_64 GWELL.WAV
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_65 DRIP1.WAV
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_66 DRIP2.WAV
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_67 DRIP3.WAV
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0},        // id_68 DRIP4.WAV
     {AL_FORMAT_STEREO8_22050 | AL_TYPE_ENV, 0} // id_69 DRIP5.WAV
     }
};


char alct_name[3][70][9] = {
    { // day
        "null",
        "ocean",
        "wind",
        "explod3",
        "gainmana",
        "fire",
        "ally",
        "null",
        "dragroar",
        "firebal1",
        "quake4",
        "foolmana",
        "bee1",
        "null",
        "select",
        "firebal2",
        "die",
        "hydra",
        "getspell",
        "speedup",
        "null",
        "portmake",
        "portuse",
        "litning",
        "explod3",
        "heal",
        "clang",
        "splash2",
        "rebound",
        "cantuse",
        "meteorex",
        "market",
        "spider",
        "arrow1",
        "arrow2",
        "null",
        "null",
        "cymerian",
        "deepone",
        "wyvern",
        "manashot",
        "switch",
        "devil",
        "null",
        "null",
        "fire",
        "goat",
        "doorc2",
        "mworm3",
        "tornado",
        "null",
        "null",
        "null",
        "null",
        "hit1",
        "hit2",
        "hit3",
        "hit4",
        "maddog",
        "mdweller",
        "morph",
        "success2",
        "zombie",
        "spellup",
        "gwell",
        "null",
        "null",
        "null",
        "null",
        "null"
    },
    { // night
        "null",
        "ocean",
        "cricket2",
        "explod3",
        "gainmana",
        "fire",
        "ally",
        "null",
        "dragroar",
        "firebal1",
        "quake4",
        "foolmana",
        "null",
        "null",
        "select",
        "firebal2",
        "die",
        "hydra",
        "getspell",
        "speedup",
        "null",
        "portmake",
        "portuse",
        "litning",
        "explod3",
        "heal",
        "clang",
        "splash2",
        "rebound",
        "cantuse",
        "meteorex",
        "market",
        "spider",
        "arrow1",
        "arrow2",
        "null",
        "null",
        "cymerian",
        "deepone",
        "wyvern",
        "manashot",
        "switch",
        "devil",
        "firefly1",
        "firefly2",
        "fire",
        "goat",
        "doorc2",
        "mworm3",
        "tornado",
        "null",
        "null",
        "null",
        "null",
        "hit1",
        "hit2",
        "hit3",
        "hit4",
        "maddog",
        "mdweller",
        "morph",
        "success2",
        "zombie",
        "spellup",
        "gwell",
        "null",
        "null",
        "null",
        "null",
        "null"
    },
    { // cave
        "null",
        "null",
        "null",
        "explod3",
        "gainmana",
        "fire",
        "ally",
        "caveman",
        "dragroar",
        "firebal1",
        "quake4",
        "foolmana",
        "null",
        "null",
        "select",
        "firebal2",
        "die",
        "null",
        "getspell",
        "speedup",
        "null",
        "portmake",
        "portuse",
        "litning",
        "explod3",
        "heal",
        "clang",
        "null",
        "rebound",
        "cantuse",
        "meteorex",
        "market",
        "spider",
        "arrow1",
        "arrow2",
        "null",
        "null",
        "cymerian",
        "null",
        "wyvern",
        "manashot",
        "switch",
        "devil",
        "firefly1",
        "firefly2",
        "fire",
        "null",
        "doorc2",
        "mworm3",
        "tornado",
        "gloop1",
        "gloop2",
        "gloop3",
        "gloop4",
        "hit1",
        "hit2",
        "hit3",
        "hit4",
        "maddog",
        "null",
        "morph",
        "success2",
        "zombie",
        "spellup",
        "gwell",
        "drip1",
        "drip2",
        "drip3",
        "drip4",
        "drip5"
    }
};

struct al_creature_table {
    uint8_t flags;              // sound-related options
    int16_t chunk_id;           // chunk identifier to play
};
typedef struct al_creature_table al_crt_t;

al_crt_t alcrt[30] = {
    {0, 8}, // 0 dragons
    {AL_REPLAY_RARELY | AL_WHISPER, 46}, // 1 goat
    {0, -1}, // 2
    {0, 8}, // 3 worms
    {0, -1}, // 4
    {0, -1}, // 5
    {0, -1}, // 6
    {0, -1}, // 7
    {0, -1}, // 8
    {0, -1}, // 9
    {0, -1}, // 10
    {0, -1}, // 11
    {0, -1}, // 12
    {0, -1}, // 13
    {0, -1}, // 14
    {0, -1}, // 15
    {0, -1}, // 16
    {0, -1}, // 17
    {0, -1}, // 18
    {AL_REPLAY_FREQUENTLY, 45}, // 19 firefly
    {0, -1}, // 20
    {0, -1}, // 21
    {0, -1}, // 22
    {0, -1}, // 23
    {0, -1}, // 24
    {0, -1}, // 25
    {0, -1}, // 26
    {0, -1}, // 27
    {0, -1}, // 28
    {0, -1} // 29
};

char creature_name[30][16] = {
    "dragon",        // 0
    "goat",          // 1
    "bee",           // 2
    "worm",          // 3
    "archer",        // 4
    "unknown",       // 5
    "unknown",       // 6
    "unknown",       // 7
    "unknown",       // 8
    "skeleton",      // 9
    "unknown",       // 10
    "unknown",       // 11
    "builder",       // 12
    "townie",        // 13
    "trader",        // 14
    "castle archer", // 15
    "wyvern",        // 16
    "manticore",     // 17
    "sentinel",      // 18
    "firefly",       // 19
    "spider",        // 20
    "devil",         // 21
    "mana worm",     // 22
    "moon dweller",  // 23
    "troglodyte",    // 24
    "cymmerian",     // 25
    "zombies",       // 26
    "hydra",         // 27
    "leviathan",     // 28
    "unknown",       // 29
};



#endif
