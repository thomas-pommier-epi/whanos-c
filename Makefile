CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRCDIR = app
SRC = $(wildcard $(SRCDIR)/*.c)
OBJ = $(SRC:.c=.o)
TARGET = compiled-app

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(OBJ)

re: clean all

.PHONY: all clean re
