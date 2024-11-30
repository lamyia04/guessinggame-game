# Makefile for guessing game

# Variables
CC = bash
TARGET = guessinggame.sh
README = README.md

# Default target
all: $(TARGET) $(README)

# Rule to run the script
run: $(TARGET)
    @echo "Running the guessing game..."
    ./$(TARGET)

# Rule to generate README.md
$(README):
    @echo "# Guessing Game" > $(README)
    @echo "This is a simple guessing game implemented in Bash." >> $(README)
    @echo "## How to Run" >> $(README)
    @echo "Use the command 'make run' to start the game." >> $(README)

# Clean rule (if needed)
clean:
    @echo "Cleaning up..."
    rm -f $(README)

# Phony targets
.PHONY: all run clean

