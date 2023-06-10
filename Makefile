# Variables
CC = g++
CFLAGS = -Wall -std=c++17
LDFLAGS = -lSDL2
SRC = $(wildcard *.cpp) # Liste tous les fichiers .cpp du répertoire courant
OBJ = $(SRC:.cpp=.o) # Remplace l'extension .cpp par .o
EXE = DoorOS.bin # Nom du fichier exécutable

# Règle principale
all: $(EXE)

# Règle pour générer l'exécutable
$(EXE): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

# Règle d'inférence pour compiler les fichiers .cpp en .o
.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $@

# Règle pour nettoyer les fichiers intermédiaires
clean:
	rm -f $(OBJ)

# Règle pour nettoyer tous les fichiers générés
mrproper: clean
	rm -f $(EXE)


