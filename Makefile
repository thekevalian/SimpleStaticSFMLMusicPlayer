CC = g++
SFML_LIB_PATH = SFML/lib # change to your SFML lib path
SFML_INC_PATH = SFML/include # change to your SFML include path
SFML_LINKS = -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lwinmm -lgdi32 -lfreetype
C_STATIC_LINKS = -static-libstdc++ -static-libgcc
PROJECT = Simple_Music_Player
SRC = $(wildcard src/*.cpp)
# version of Mingw for my SFML is WinLibs MSVCRT 13.1.0 (64-bit)

$(PROJECT).exe: $(SRC)
	$(CC) $^ -o $@ -DSFML_STATIC -I $(SFML_INC_PATH) -L $(SFML_LIB_PATH) $(SFML_LINKS) $(C_STATIC_LINKS) -v