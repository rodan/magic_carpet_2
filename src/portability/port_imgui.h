#ifndef __PORT_IMGUI_H__
#define __PORT_IMGUI_H__

uint8_t port_imgui_init(void);
uint8_t port_imgui_loop(void);
void port_imgui_cleanup(void);

#ifdef CONFIG_IMGUI_HLVL
void port_imgui_process_event(SDL_Event *event);
SDL_Window* port_imgui_get_window_ptr(void);
SDL_Renderer* port_imgui_get_renderer_ptr(void);
#endif

#endif
