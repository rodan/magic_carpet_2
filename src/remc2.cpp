
//#include <boost/bind/bind.hpp>
//#include <boost/asio.hpp>

#include "engine/CommandLineParser.h"
#include "engine/engine_support.h"
#include "sub_main.h"

#include "config.h"
#ifdef CONFIG_IMGUI
#include "port_imgui.h"
#endif

using namespace std;

int main(int argc, char **argv)
{
    //char *argv[] = { "netherw.exe","-level","46", NULL };
    //int argc = (sizeof(argv) / sizeof(argv[0])) - 1;
    char *envp[] = { NULL };
    int8_t ret = 0;

    //mine_texts((char*)"0160-0022A288", 0x2a1000, 1000, (char*)"mined-texts.txt");

#ifdef CONFIG_IMGUI
    port_imgui_init();
#endif
    CommandLineParams.Init(argc, argv);

    //while (ret != -1) {
    //    ret = port_imgui_loop();
    //}
    support_begin();
    int retval = sub_main(argc, argv, envp);
    support_end();
    //saveactstate();

#ifdef CONFIG_IMGUI
    port_imgui_cleanup();
#endif
    return 0;
}

