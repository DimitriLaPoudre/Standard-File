##
## EPITECH PROJECT, 2023
## Standard File
## File description:
## Makefile
##

NAME = test

SRC = src/main.c \

OBJ = $(SRC:.c=.o)

CFLAGS = -I./include -l csfml-graphics -l csfml-system -l csfml-audio

all: $(NAME)

$(NAME): $(OBJ)
	make -C lib/
	gcc -o $(NAME) $(OBJ) $(CFLAGS) -L./lib/ -lglobal

clean:
	make -C lib/ clean
	rm -rf $(OBJ)

fclean: clean
	make -C lib/ fclean
	rm -rf $(NAME)

re: fclean all
