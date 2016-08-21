///////////////////////////
///////////////////////////
////                   ////
////     EXT & PRN     ////
////    MAYHEM   II    ////
////                   ////
///////////////////////////
///////////////////////////


#include <allegro5/allegro.h>
#include <string.h>
#include <stdio.h>

#include "collision.h"
#include "physics.h"
#include "platform_data.h"
#include "player_info.h"
#include "player_view.h"
#include "utils.h"
#include "vaisseau_data.h"
#include "vaisseau_gfx.h"
#include "mapping_key.h"
#include "player_input.h"
#include "soundfx.h"
#include "command.h"
#include "option.h"

#include "game_mgr.h"
#include "intro_sequence.h"





//----------------------------------------------------------------------------//
//                               MAIN                                         //
//----------------------------------------------------------------------------//

int main()
{
    GameManager::Init();
    // previous seq, nb views, nb players, start level
    GameSequence * seq=new IntroSequence(NULL, 10.0, 0.5, 2, 0, 10, false, true);

    GameManager::Run(seq);
    GameManager::Shutdown();
    return 0;
}

//#FIXME END_OF_MAIN();                                               // Allegro style 4 Win


