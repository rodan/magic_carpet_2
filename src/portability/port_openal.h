#pragma once
#ifndef PORT_OPENAL_H
#define PORT_OPENAL_H

#include "AL/al.h"

#define   OPENAL_CHANNELS  24

////< flags used by alsound_set_env()
#define       AL_SET_BANK  0x1

#define   AL_BANK_MAP_DAY  0x0
#define AL_BANK_MAP_NIGHT  0x1
#define  AL_BANK_MAP_CAVE  0x2
#define      AL_BANK_MENU  0x4

#define   AL_FORMAT_STEREO8_22050  0x1
#define     AL_FORMAT_MONO8_22050  0x2
#define               AL_TYPE_ENV  0x4

struct al_chunk {
    int16_t id;                 ///< chunk identifier
    ALint state;                ///< 0, AL_PLAYING or something in between
    ALuint alSource;            ///< openal source identifier
    ALsizei size;               ///< chunk size
};
typedef struct al_chunk al_chunk_t;     ///< element of the currently playing chunks array

struct al_sound_source_parameters {
    float gain;
    float reference_distance;
    float max_distance;
    float rolloff_factor;
    axis_3d coord;
    axis_4d orient;
};
typedef struct al_sound_source_parameters al_ssp_t;

void alsound_init(void);
int16_t alsound_play(const int16_t chunk_id, Mix_Chunk * chunk, const uint16_t loops,
                     al_ssp_t * ssp, const uint16_t flags);
void alsound_update(void);
void alsound_clear_cache(void);
void alsound_close(void);
void alsound_set_env(const int32_t value, const uint8_t flag);
void alsound_set_location(axis_3d * coordinates, axis_4d * orientation);
void alsound_end_sample(const int32_t chunk_id);
uint8_t alsound_sample_status(const int32_t chunk_id);
void alsound_set_sample_volume(const int32_t chunk_id, const int32_t volume);
uint16_t alsound_get_chunk_flags(const int16_t chunk_id);
int16_t alsound_create_source(const int16_t chunk_id, al_ssp_t * ssp);
void alsound_update_source(event_t * entity, axis_3d * position);
void alsound_delete_source(const int16_t ch);
uint8_t alsound_save_chunk(uint8_t * data, const uint32_t len, char *filename);

void alsound_imgui(void);

#endif
