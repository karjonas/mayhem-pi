CPP = g++
CC = gcc
RES  = 
OBJ  = battle_sequence.o collision.o command.o game_mgr.o intro_sequence.o player_input.o mapping_key.o mapping_joy.o Mayhem2.o option.o physics.o platform_data.o player_info.o player_view.o soundfx.o utils.o vaisseau_data.o vaisseau_gfx.o $(RES)
LINKOBJ  = battle_sequence.o collision.o command.o game_mgr.o intro_sequence.o player_input.o mapping_key.o mapping_joy.o Mayhem2.o option.o physics.o platform_data.o player_info.o player_view.o soundfx.o utils.o vaisseau_data.o vaisseau_gfx.o $(RES)
LIBS = -lalleg
INCS = 
BIN  = "mayhem2-pi"
CXXINCS= -O0 -g -Werror -Wno-write-strings -Wno-deprecated-declarations
INCS= -O0 -g -Werror -Wno-write-strings -Wno-deprecated-declarations
CXXFLAGS = $(CXXINCS)
CFLAGS = $(INCS)

.PHONY: all all-before all-after clean clean-custom

all: all-before "mayhem2-pi" all-after

clean: clean-custom
	rm -f $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(CPP) $(LINKOBJ) -o "mayhem2-pi" $(LIBS)

battle_sequence.o: battle_sequence.cpp
	$(CPP) -c battle_sequence.cpp -o battle_sequence.o $(CXXFLAGS)

collision.o: collision.cpp
	$(CPP) -c collision.cpp -o collision.o $(CXXFLAGS)

command.o: command.cpp
	$(CPP) -c command.cpp -o command.o $(CXXFLAGS)

game_mgr.o: game_mgr.cpp
	$(CPP) -c game_mgr.cpp -o game_mgr.o $(CXXFLAGS)

intro_sequence.o: intro_sequence.cpp
	$(CPP) -c intro_sequence.cpp -o intro_sequence.o $(CXXFLAGS)

player_input.o: player_input.cpp
	$(CPP) -c player_input.cpp -o player_input.o $(CXXFLAGS)

mapping_key.o: mapping_key.cpp
	$(CPP) -c mapping_key.cpp -o mapping_key.o $(CXXFLAGS)

mapping_joy.o: mapping_joy.cpp
	$(CPP) -c mapping_joy.cpp -o mapping_joy.o $(CXXFLAGS)

Mayhem2.o: Mayhem2.cpp
	$(CPP) -c Mayhem2.cpp -o Mayhem2.o $(CXXFLAGS)

option.o: option.cpp
	$(CPP) -c option.cpp -o option.o $(CXXFLAGS)

physics.o: physics.cpp
	$(CPP) -c physics.cpp -o physics.o $(CXXFLAGS)

platform_data.o: platform_data.cpp
	$(CPP) -c platform_data.cpp -o platform_data.o $(CXXFLAGS)

player_info.o: player_info.cpp
	$(CPP) -c player_info.cpp -o player_info.o $(CXXFLAGS)

player_view.o: player_view.cpp
	$(CPP) -c player_view.cpp -o player_view.o $(CXXFLAGS)

soundfx.o: soundfx.cpp
	$(CPP) -c soundfx.cpp -o soundfx.o $(CXXFLAGS)

utils.o: utils.cpp
	$(CPP) -c utils.cpp -o utils.o $(CXXFLAGS)

vaisseau_data.o: vaisseau_data.cpp
	$(CPP) -c vaisseau_data.cpp -o vaisseau_data.o $(CXXFLAGS)

vaisseau_gfx.o: vaisseau_gfx.cpp
	$(CPP) -c vaisseau_gfx.cpp -o vaisseau_gfx.o $(CXXFLAGS)
