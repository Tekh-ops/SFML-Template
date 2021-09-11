CXX		  := g++
CXX_FLAGS := -Wall -Wextra -std=c++17 -ggdb -DMACOS -D_DARWIN_C_SOURCE

BIN		:= bin
SRC		:= src
INCLUDE	:= include
LIB		:= lib

LIBRARIES	:= -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio
EXECUTABLE	:= main


all: $(BIN)/$(EXECUTABLE)

run: clean all
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES) --target=x86_64-apple-darwin

clean:
	-rm $(BIN)/*

# cmake -DCMAKE_OSX_ARCHITECTURES=x86_64